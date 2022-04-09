        @extends('layouts.app')


        @section('content')
        <br>
                <div class="jumbotron text-center">
                        <h1>{{$title}}</h1>
                        <blockquote> Where the Belly Rules the Mind</blockquote>
                        @guest
                       
                        <a class="button" href="{{ route('login') }}">{{ __('Login') }}</a></li>
                        <a class="button" href="{{ route('register') }}">{{ __('Register') }}</a>
                       @else
                       <p>Hello  {{ Auth::user()->name }}!</p>
                        
                        @endguest
                    </div>
       
       
        @endsection