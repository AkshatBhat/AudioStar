<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PagesController extends Controller
{
    public function index()
    {
        $title = 'AudioStar';
        // return view('pages.index',compact('title'));
        return view('pages.index')->with('title',$title); //with('the name u want in view to be put as $name in view',$varname)
    }
    public function about()
    {
        $title = 'About Us';
        return view('pages.about')->with('title',$title);
    }
    public function services()
    {
        $data = array(
            'title' => 'Services',
            'services' => ['Web Design','Programming']
        );
        return view('pages.services')->with($data);
    }
    public function welcome()
    {
        $title = 'Welcome';
        return view('pages.welcome')->with('title',$title);
    }
    public function contact()
    {
        $title = 'Contact';
        return view('pages.contact')->with('title',$title);
    }
    public function allmusic()
    {
        $title = 'All Music';
        return view('pages.allmusic')->with('title',$title);
    }
    public function myplaylists()
    {
        $title = 'My Playlists';
        return view('pages.myplaylists')->with('title',$title);
    }
    public function likedsongs()
    {
        $title = 'Liked Songs';
        return view('pages.likedsongs')->with('title',$title);
    }

}
