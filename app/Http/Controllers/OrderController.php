<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Order;
use Auth;

class OrderController extends Controller
{
    public function PostIndex(){
		$obh=new Order();
		$obj->body=$_COOKIE['basket'];
		$obj->used_id=(Auth::user()->quest())?0:Auth::user()->id;\
		$obj->name=$_POST['name'];
		$obj->email=$_POST['email'];
		$obj->phone=$_POST['phone'];
		$obj->adress=$_POST['adress'];
		$obj->save();
		foreach($_COOKIE as $one){
			setcookie($one,'');
		}
		return redirect('basket');
		
			
	}
	
}
