<?php
namespace App\Providers\ViewComposers;
use Illuminate\Contracts\View\View;
use App\Category;
class SiteComposer{
	public function compose(View $view){
		$v_catalogs=Category::all();
		return $view->with('v_catalogs',$v_catalogs);
	}
}
	