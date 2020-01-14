<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Message;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Pusher\Pusher;

class testHomeController extends Controller
{
      /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function testHome(){
         //$title = 'Chat App';
         //selecting all users except the log in user;
         // select all users except logged in user
        // $users = User::where('id', '!=', Auth::id())->get();
        // count how many message are unread from the selected user
        $userChat = Auth::user()->role == 'Customer'? 'Author':'Customer';
        //dd(Auth::user());
        $users = DB::select("select users.id, users.name, users.avatar, users.email, count(is_read) as unread 
        from users LEFT  JOIN  messages ON users.id = messages.from and is_read = 0 and messages.to = " . Auth::id() . "
        where users.role = '$userChat' and users.id !=" . Auth::id() . "
        group by users.id, users.name, users.avatar, users.email");
        //  $users = DB::select("select admins.id, admins.name, admins.avatar, admins.email, count(is_read) as unread 
        // from admins LEFT  JOIN  messages ON admins.id = messages.from and is_read = 0 and messages.to = " . Auth::id() . "
        // where admins.id != " . Auth::id() . " 
        // group by admins.id, admins.name, admins.avatar, admins.email");

        // $users = User::where('id', '!=', Auth::id())->get(): 
        return view('testHome', ['users'=>$users]);
    }
    public function getMessage($user_id){
        // return $user_id; 
        // getting all thos messages for selected user
        // getting those message whic is from = Auth::id() and to user_id OR from user_id to = Auth::id();
       // Auth::guard('admin')->user()->
        $my_id = Auth::id();
        // Make read all unread message
        Message::where(['from' => $user_id, 'to' => $my_id])->update(['is_read' => 1]);
        // Get all message from selected user
        $messages = Message::where(function ($query) use ($user_id, $my_id) {
            $query->where('from', $user_id)->where('to', $my_id);
        })->oRwhere(function ($query) use ($user_id, $my_id) {
            $query->where('from', $my_id)->where('to', $user_id);
        })->get();
        return view('messages.index', ['messages' => $messages]);
    //     $data = 
    //     '<ul class="messages">
    //     foreach($messages as $message){
    //         <li class="message clearfix">
    //             <div class=" ($message->from == Auth::id()) ? "sent" : "received"">
    //                 <p>$message->message</p>
    //                 <p class="date">date("d M y, h:i a", strtotime($message->created_at))</p>
    //             </div>
    //         </li>
    //      }
    // </ul>
    //     ';
    }

    public function sendMessage(Request $request){
        $from = Auth::id();
        $to = $request->receiver_id;
        $message = $request->message;

        $data = new Message();
        $data->from=$from;
        $data->to=$to;
        $data->message=$message;
        $data->is_read =0;
        $data->save();

        // pusher
        $options = array(
            'cluster' => 'ap2',
            'useTLS' => true
        );
        $pusher = new Pusher(
            env('PUSHER_APP_KEY'),
            env('PUSHER_APP_SECRET'),
            env('PUSHER_APP_ID'),
            $options
        );
        $data = ['from' => $from, 'to' => $to]; // sending from and to user id when pressed enter
        $pusher->trigger('my-channel', 'my-event', $data);

    }
}
