@extends('layout.app')

@section('content')
<br>
{!! Form::open(['action' => ['PostsController@update',$post->id]]) !!}
    
<div class="form-group">
     
    {{Form::label('title', 'Title')}}
    
    {{ Form::text('title',$post->title, ['class'=>'form-control']) }}

    {{Form::label('body', 'Body')}}
    {{ Form::textarea('body', $post->body, ['class' => 'form-control']) }}
    
    {!! Form::hidden('_method', 'PUT') !!}
    
   {{Form::submit('Submit',['class'=>'button'])}}

</div>


{!! Form::close() !!}






@endsection