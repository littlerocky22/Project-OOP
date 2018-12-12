<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;

class ProductController extends Controller
{
    public function getProducts($catalog_id=null){
		$category=Category::find($catalog_id);
	return view('products',compact('category'));
	}
}
