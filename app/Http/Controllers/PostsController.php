<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post; 

class PostsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $posts = Post::orderBy('id','desc')->get();
        $englishsongs = Post::where('english','1')->orderBy('id','desc')->get();
        $hindisongs = Post::where('hindi','1')->orderBy('id','desc')->get(); 
        $captions = ['Newest Releases', 'English Songs', 'Hindi Songs'];
        // return view('pages.index',compact('title'));
        return view('posts.index')->with(['captions'=>$captions, 
            'posts'=>$posts,
            'englishsongs'=>$englishsongs,
            'hindisongs'=>$hindisongs]); //with('the name u want in view to be put as $name in view',$varname)
    }

    public function readSongsData()
    {
        $songs = Post::orderBy('id','desc')->get();
        return response($songs);
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
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
    }
}
