@extends('layouts.app')

@section('content')
<div class="container">
          <br>
            <a href="/posts/create/" style="border-radius:40%;font-size:60px;padding:20px;color:#004C4C;text-decoration:unset;">+ <small>Add Post</small></a>

            <hr>
            @if(count($posts)>0)
                @foreach($posts as $post)
            <a href="posts/{{$post->id}}" id="post"><div class="card zoom">
                        <div class="card-body">
                          <img src="{{$post->cover_image}}" />
                        <h5 class="card-title">{{$post->title}}</h5>
                          <p class="card-text">written on ii {{$post->created_at}}</p>
                        </div>
                      </div>
                    </a>
                <br>
            
            
                @endforeach
                {{$posts->links()}}

                @else
                    <p>You have no posts</p>
            @endif

</div>
@endsection
