@extends('layouts.base')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">{{$one->name}}</div>

                <div class="card-body">
				
				<hr/>
				<div class="row">
				
			
				
				<div class="col-lg-12">
              
                <a href="{{asset('uploads/'.$one->picture)}}"><img src="{{asset('uploads/'.$one->picture)}}" class="card-img-top"  alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="#">{{$one->name}}</a>
                  </h4>
                  <h5>${{$one->price}}</h5>
				  @include('includes.button')
                  {!!$one->body!!}
                </div>
				
              </div>
				</div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
