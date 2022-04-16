@extends('layouts.app')

@section('content')
<br>
{!! Form::open(['action' => 'PostsController@store','enctype'=>'multipart/form-data']) !!}
    
<div class="form-group">
    
    {{Form::label('title', 'Title')}}
    
    {{ Form::text('title','', ['class'=>'form-control']) }}

    {{Form::label('body', 'Body')}}
    {{ Form::textarea('body', null, ['class' => 'form-control']) }}
    <br>
    {{ Form::file('cover_image') }}
   {{Form::submit('Submit',['class'=>'button float-md-right'])}}

</div>


{!! Form::close() !!}






@endsection