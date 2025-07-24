<?php

namespace Core\caches;

use Predis\Client;

class RedisCache
{
    private static ?self $instance = null;
    private Client $client;

    private function __construct()
    {
        // Idéalement, ces paramètres viendraient d'un fichier de configuration.
        // Pour l'instant, j'utilise les valeurs par défaut de Redis.
        $this->client = new Client([
            'scheme' => 'tcp',
            'host'   => '127.0.0.1',
            'port'   => 6379,
        ]);
    }

    public static function getInstance(): self
    {
        if (self::$instance === null) {
            self::$instance = new self();
        }
        return self::$instance;
    }

    /**
     * Stocke une valeur dans le cache pour une durée déterminée.
     * @param string $key La clé de stockage.
     * @param mixed $value La valeur à stocker (sera sérialisée en JSON).
     * @param int $ttl Durée de vie en secondes (par défaut 1 heure).
     */
    public function set(string $key, $value, int $ttl = 3600): void
    {
        $this->client->setex($key, $ttl, json_encode($value));
    }

    /**
     * Récupère une valeur depuis le cache.
     * @param string $key La clé à récupérer.
     * @return mixed La valeur désérialisée, ou null si la clé n'existe pas.
     */
    public function get(string $key)
    {
        $value = $this->client->get($key);
        return $value ? json_decode($value, true) : null;
    }

    /**
     * Supprime une clé du cache.
     * @param string $key La clé à supprimer.
     */
    public function del(string $key): void
    {
        $this->client->del([$key]);
    }

    // Empêcher le clonage et la désérialisation
    private function __clone() {}
    public function __wakeup() {}
}
