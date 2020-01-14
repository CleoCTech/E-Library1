<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Admin;
class ContactsController extends Controller
{
    public function get()
    {
       $contacts = Admin::all();

       return response()->json($contacts);
    }
}
