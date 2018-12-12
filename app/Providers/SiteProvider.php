<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use View;

class SiteProvider extends ServiceProvider
{
    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        View::composer('layouts.base','App\Providers\ViewComposers\SiteComposer');
    }

    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
