<?php

use App\src\Application;
use App\Providers\RepositoryServiceProvider;
use App\Providers\BusinessServiceProvider;
use App\Providers\AppServiceProvider;
$app=new Application();

$serviceProviders=[
    RepositoryServiceProvider::class,
    BusinessServiceProvider::class,
    AppServiceProvider::class,
];
$providers=[];
foreach ($serviceProviders as $provider) {
    $pro=new $provider($app);
    $providers[]=$pro;
}
foreach ($providers as $provider) {
    $provider->register();
}

return $app;