@extends('layouts.app')

@section('content')
 @include('inc.aboutnavs')
{{-- <h1>{{$title}}</h1>
@if (count($clubs) > 0)
    <ul class="list-group">
    @foreach ($clubs as $club)
        <li class="list-group-item">{{$club}}</li>
    @endforeach 
    </ul>
@endif --}}
<br><br>

    <div class="card flex-row flex-wrap">
        <div class="card-header border-0">
            <img src="/storage/cover_images/rugby1.jpg" alt="">
        </div>
        <div class="card-block px-2">
            <h4 class="card-title">Rugby</h4>
            <p class="card-text">In writing, the words point and purpose are almost synonymous. Your point is your purpose, and how you decide to make your point clear to your reader is also your purpose. Writers have a point and a purpose for every paragraph that they create.

Writers write descriptive paragraphs because their purpose is to describe something. Their point is that something is beautiful or disgusting or strangely intriguing. Writers write persuasive and argument paragraphs because their purpose is to persuade or convince someone. Their point is that their reader should see things a particular way and possibly take action on that new way of seeing things. Writers write paragraphs of comparison because the comparison will make their point clear to their readers.</p>
            <a href="#" class="btn btn-primary">Read More</a> <br>
        </div>
        <div class="w-100"></div>
        <div class="card-footer w-100 text-muted">
            Footer stating cats are CUTE little animals
        </div>
    </div>

    <div class="card flex-row flex-wrap">
        <div class="card-header border-0">
            <img src="/storage/cover_images/rugby2.jpg" alt="">
        </div>
        <div class="card-block px-2">
            <h4 class="card-title">Rugby</h4>
            <p class="card-text">In writing, the words point and purpose are almost synonymous. Your point is your purpose, and how you decide to make your point clear to your reader is also your purpose. Writers have a point and a purpose for every paragraph that they create.

Writers write descriptive paragraphs because their purpose is to describe something. Their point is that something is beautiful or disgusting or strangely intriguing. Writers write persuasive and argument paragraphs because their purpose is to persuade or convince someone. Their point is that their reader should see things a particular way and possibly take action on that new way of seeing things. Writers write paragraphs of comparison because the comparison will make their point clear to their readers.</p>
            <a href="#" class="btn btn-primary">Read More</a><br>
        </div>
        <div class="w-100"></div>
        <div class="card-footer w-100 text-muted">
            Footer stating cats are CUTE little animals
        </div>
    </div>

     <div class="card flex-row flex-wrap">
        <div class="card-header border-0">
            <img src="/storage/cover_images/soccer1.jpg" alt="">
        </div>
        <div class="card-block px-2">
            <h4 class="card-title">Soccer</h4>
            <p class="card-text">In writing, the words point and purpose are almost synonymous. Your point is your purpose, and how you decide to make your point clear to your reader is also your purpose. Writers have a point and a purpose for every paragraph that they create.</p>
            <a href="#" class="btn btn-primary">Read More</a><br>
        </div>
        <div class="w-100"></div>
        <div class="card-footer w-100 text-muted">
            Footer stating cats are CUTE little animals
        </div>
    </div>

     <div class="card flex-row flex-wrap">
        <div class="card-header border-0">
            <img src="/storage/cover_images/soccer2.jpg" alt="">
        </div>
        <div class="card-block px-2">
            <h4 class="card-title">Soccer</h4>
            <p class="card-text">In writing, the words point and purpose are almost synonymous. Your point is your purpose, and how you decide to make your point clear to your reader is also your purpose. Writers have a point and a purpose for every paragraph that they create.

Writers write descriptive paragraphs because their purpose is to describe something. Their point is that something is beautiful or disgusting or strangely intriguing. Writers write persuasive and argument paragraphs because their purpose is to persuade or convince someone. Their point is that their reader should see things a particular way and possibly take action on that new way of seeing things. Writers write paragraphs of comparison because the comparison will make their point clear to their readers.</p>
            <a href="#" class="btn btn-primary">Read More</a><br>
        </div>
        <div class="w-100"></div>
        <div class="card-footer w-100 text-muted">
            Footer stating cats are CUTE little animals
        </div>
    </div>
@endsection
