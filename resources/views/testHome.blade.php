@extends('layouts.app')
<link href="{{ asset('css/style.css') }}" rel="stylesheet">
@section('content')
   <div class="container-fluid">
       <div class="row">
            <div class="col-md-4">
                <div class="user-wrapper">
                    <ul class="users">
                        @foreach ($users as $user)
                            <li class="user" id="{{ $user->id }}">

                                {{--will show unread count notification--}}
                                @if($user->unread)
                                    <span class="pending">{{ $user->unread }}</span>
                                @endif
                                <div class="media">
                                <div class="media-left">
                                <img src="{{ $user->avatar}}" alt="" class="media-object">
                                </div>
                                <div class="media-body">
                                    <p class="name">{{ $user->name }}</p>
                                    <p class="email">{{ $user->email }}</p>
                                </div>
                                </div>
                            </li>
                         @endforeach
                    </ul>
                </div>
            </div>
            <div class="col-md-8">
                <div class="col-md-12" id="messages">
                    {{-- here am suppossed to load messages --}}
                </div>
                <div class="col-md-12 input-text" id="msgbox" style="display:none">
                    <input type="text" name="message" class="submit">
                </div>
            </div>
       </div>
   </div>
@endsection
<@script>
   
</@script>