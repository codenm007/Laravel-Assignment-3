

 @if(count($errors)>0)
 <br>

    @foreach($errors->all() as $err)
    <div class="alert alert-danger">
            <strong>Error!</strong>{{$err}} 
    </div>
    @endforeach
 @endif


 @if(session('error'))
 <br>
 
 <div class="alert alert-danger">
         {{session('error')}} 
       </div>
 
 
 @endif


@if(session('message'))
<br>

<div class="alert alert-success">
        <strong>Success!</strong>{{session('message')}} 
      </div>


@endif