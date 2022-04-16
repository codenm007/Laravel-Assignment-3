@extends('layouts.app')

@section('content')
<br>
<h1>Posts</h1>
<hr>
@if(count($posts)>0)
    @foreach($posts as $post)
<a href="posts/{{$post->id}}" id="post"><div class="card zoom">
            <div class="card-body">
              <img style="width: 100%; height: 50vh" src="{{ asset('/storage/cover_image/'.$post->cover_image) }}" />
            <h5 class="card-title">{{$post->title}}</h5>
              <p class="card-text">written on uui {{$post->created_at}}</p>
            </div>
          </div>
        </a>
    <br>


    @endforeach
    {{$posts->links()}}
    @else
        <p>No posts</p>
@endif
@endsection