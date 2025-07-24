<?php

namespace Core\src;

class Container
{
    // Stocke les bindings (clé => factory)
    protected $bindings = [];

    // Stocke les singletons instanciés
    protected $instances = [];

    private static $_instance;
    public static function getInstance()
    {
        if (!self::$_instance) {
            self::$_instance = new self();
        }
        return self::$_instance;
    }
    /**
     * Enregistrer un binding (classe ou interface)
     *
     * @param string $abstract Clé (nom de la classe ou interface)
     * @param callable $concrete Callback pour créer l'instance
     */
    public function bind(string $abstract, callable $concrete)
    {
        $this->bindings[$abstract] = $concrete;
    }

    /**
     * Enregistrer un singleton
     *
     * @param string $abstract
     * @param callable $concrete
     */
    public function singleton(string $abstract, callable $concrete)
    {
        $this->bindings[$abstract] = $concrete;
        $this->instances[$abstract] = null;
    }

    /**
     * Enregistrer une instance partagée dans le conteneur.
     *
     * @param  string  $abstract
     * @param  mixed   $instance
     * @return void
     */
    public function instance(string $abstract, $instance)
    {
        $this->instances[$abstract] = $instance;
    }

    /**
     * Résoudre une instance
     *
     * @param string $abstract
     * @return object
     * @throws \Exception
     */
    public function make(string $abstract)
    {
        // Si instance singleton déjà créée, la retourner
        if (isset($this->instances[$abstract]) && $this->instances[$abstract] !== null) {
            return $this->instances[$abstract];
        }

        // Si binding défini, appeler la factory
        if (isset($this->bindings[$abstract])) {
            $object = call_user_func($this->bindings[$abstract], $this);
        } else {
            // Sinon, essayer de construire la classe automatiquement
            $object = $this->build($abstract);
        }

        // Si singleton, sauvegarder l'instance
        if (array_key_exists($abstract, $this->instances)) {
            $this->instances[$abstract] = $object;
        }

        return $object;
    }

    /**
     * Construire une instance d'une classe en résolvant ses dépendances via Reflection
     *
     * @param string $class
     * @return object
     * @throws \Exception
     */
    protected function build(string $class)
    {
        if (!class_exists($class)) {
            throw new \Exception("Class $class not found");
        }

        $reflector = new \ReflectionClass($class);

        // Pas de constructeur, on crée l'objet directement
        $constructor = $reflector->getConstructor();
        if (is_null($constructor)) {
            return new $class;
        }

        // Récupérer les paramètres du constructeur
        $parameters = $constructor->getParameters();
        $dependencies = $this->resolveDependencies($parameters);

        return $reflector->newInstanceArgs($dependencies);
    }
    protected function resolveDependencies(array $parameters)
    {
        $dependencies = [];

        foreach ($parameters as $parameter) {
            $type = $parameter->getType();

            if ($type && !$type->isBuiltin()) {
                // C'est une classe : on la résout récursivement
                $dependencies[] = $this->make($type->getName());
            } elseif ($parameter->isDefaultValueAvailable()) {
                // Pas de type ou type primitif avec valeur par défaut
                $dependencies[] = $parameter->getDefaultValue();
            } else {
                throw new \Exception("Impossible de résoudre la dépendance {$parameter->name}");
            }
        }

        return $dependencies;
    }

    public function call($callable, array $parameters = [])
{
    $reflection = new \ReflectionFunction(\Closure::fromCallable($callable));
    $args = [];

   

    $index = 0;
    foreach ($reflection->getParameters() as $param) {
        $name = $param->getName();
        $type = $param->getType();
        $useAssociative = array_is_list($parameters) === false;
        if ($useAssociative && isset($parameters[$name])) {
            $args[] = $parameters[$name];
        } elseif (!$useAssociative&&isset($parameters[$index]) && !($type !== null && class_exists($type->getName()))) {
            $args[] = $parameters[$index];
            $index++;
        } elseif ($type !== null && class_exists($type->getName())) {
            $args[] = $this->make($type->getName());
        } elseif ($param->isDefaultValueAvailable()) {
            $args[] = $param->getDefaultValue();
          
        } else {
            throw new \Exception("Impossible de résoudre \${$name}");
        }
    }

    return $callable(...$args);
}
}

/* 

class Container
{
    protected $bindings = [];

    public function bind($abstract, $concrete = null)
    {
        $this->bindings[$abstract] = $concrete ?? $abstract;
    }

    public function resolve($abstract)
    {
        $concrete = $this->bindings[$abstract] ?? $abstract;
        $reflection = new \ReflectionClass($concrete);

        if (!$reflection->isInstantiable()) {
            throw new \Exception("Classe non instanciable: $concrete");
        }

        $constructor = $reflection->getConstructor();
        if (!$constructor) return new $concrete;

        $params = $constructor->getParameters();
        $dependencies = [];

        foreach ($params as $param) {
            $depClass = $param->getType()?->getName();
            if ($depClass === null) {
                throw new \Exception("Dépendance non résolue pour: {$param->getName()}");
            }
            $dependencies[] = $this->resolve($depClass);
        }

        return $reflection->newInstanceArgs($dependencies);
    }
}

 */
