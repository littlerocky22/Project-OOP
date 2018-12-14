@extends('layouts.base')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">{{$category->name}}</div>

                <div class="card-body">
				{!!$category->body!!}
				<hr/>
				<div class="row">
				@foreach($category->products()->get() as $one)
			
				
				<div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="{{asset('product/'.$one->id)}}"><img src="{{asset('uploads/'.$one->picture)}}"  class="card-img-top" alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="{{asset('product/'.$one->id)}}">{{$one->name}}</a>
                  </h4>
                  <h5>${{$one->price}}</h5>
                </div>
              </div>
            </div>

				@endforeach
				</div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
