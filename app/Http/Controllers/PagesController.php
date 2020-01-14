<?php

namespace App\Http\Controllers;

use App\Admin;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Post;
use DB;

class PagesController extends Controller
{
    public function index(){
        $recent_posts = Post::orderBy('created_at', 'desc')->take(2)->get();
        $title = 'Welcome to E-Counseliing';
        $data = array(
            'recent_posts' => $recent_posts,
            'title' => $title
        );
        //return view('pages.index', compact('title'));

        return view('pages.index')->with($data);
    }

    
    public function about(){
         $title = 'About Us';
        return view('pages.about')->with('title', $title);
    }
    public function services(){
         $data = array(
             'title'=>'Services',
             'services' => ['Web Design','Software Engineer','Cyber Security','Blockchain Technology']
         );
        return view('pages.services')->with($data);
    }

    public function home(){
        return view('welcome');
    }
    public function dean(){
         $title = 'Dean Message';
        return view('inc.dean')->with('title', $title);
    }

    public function clubs(){
         $data = array(
             'title'=>'Clubs',
             'clubs' => ['Techno Science ','AIESEC','Salsa Dance Club','Music Club']
         );
        return view('inc.clubs')->with($data);
    }

    public function sports(){
        
        return view('inc.sports');
    }

}
