<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post; //include post model
class PostsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
   
    public function __construct()
    {
        $this->middleware('auth',['except'=>['index','show']]);
        
    }
   
   
     public function index()
    {
        //
        $posts= Post::orderBy('created_at','desc')->paginate(15);
        return view('posts.index')->with('posts',$posts);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('posts.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            'title'=>'required',
            'body'=>'required'
        ]);
            $post=new Post();
            $post->title=$request->input('title');
            $post->body=$request->input('body');
           $post->user_id=auth()->user()->id;
            $post->save();
            $message='post created';
            return redirect('/posts')->with('message',$message);
            
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        $post=Post::find($id);
        return view('posts.post')->with('post',$post);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        
        $post=Post::find($id);
        if($post->user->id == auth()->user()->id)
        return view('posts.edit')->with('post',$post);

        else
        
        return redirect('/posts')->with('error','Unauthorized Page');
        
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $this->validate($request,[
            'title'=>'required',
            'body'=>'required'
        ]);
            $post=Post::Find($id);
            $post->title=$request->input('title');
            $post->body=$request->input('body');
            $post->save();
            $message='Post Updated';
            return redirect('/posts')->with('message',$message);

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    $post=Post::Find($id);
   
    if($post->user->id == auth()->user()->id)
        {      
            $post->delete();
            return redirect('/posts')->with('message','Post Deleted');
        }
else 
return redirect('/posts')->with('error','Unauthorized Page');
   

    }
}
