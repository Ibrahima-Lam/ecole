<?php

require_once '../vendor/autoload.php';
$p = $_GET["p"] ?? "home/index";
$args = explode("/", $p);
$class = $args[0] ?? 'home';

$controller = "App\Controllers\https\\" . $class . "Controller";
$methode = $args[1] ?? "index";

if (strtoupper($args[0]) == strtoupper('api')) {
    $class = $args[1] ?? null;
    $methode = $args[2] ?? "index";
    $controller = "App\Controllers\apis\\" . $class . "ApiController";
    unset($args[2]);
} elseif (strtoupper($args[0]) == strtoupper('pdf')) {
    $class = $args[1] ?? null;
    $methode = $args[2] ?? "index";
    $controller = "App\Controllers\pdfs\\" . $class . "PdfController";
    unset($args[2]);
}
unset($args[0]);
unset($args[1]);
if (class_exists($controller)) {
    $instance = new $controller;
    if (method_exists($instance, $methode)) {
        call_user_func_array([$instance, $methode], $args ?? []);
    } else {
        header("HTTP/1.0 404 Not Found");
    }
} else {
    header("HTTP/1.0 404 Not Found");
}

/* try {
    if (class_exists($controller) && method_exists($instance, $methode)) {
    } else {
        echo "error 404";
    }
} catch (\Throwable $th) {
    echo "error 404 " . $th;
} */
