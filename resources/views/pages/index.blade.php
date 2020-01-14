@extends('layouts.app')
<link href="{{ asset('css/mycss.css') }}" rel="stylesheet">
{{-- <link href="{{ asset('css/style.css') }}" rel="stylesheet"> --}}
@section('content')

 {{-- //start carousel --}}
 <div class="container" id="carouseL">
  <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="/storage/cover_images/conferment-of-doctorate-degrees-during-7th-graduation-ceremony.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="/storage/cover_images/opening-of-the-male-hostel-complex-edited.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="/storage/cover_images/entertainers.jpg" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
 </div>
  {{-- //end carousel --}}
<br><br>
<h2 class="blog-post-title">Featured Posts</h2> 
@if(count($recent_posts) > 0)
  <div class="row mb-2">
    @foreach($recent_posts as $recent_post)
    <div class="col-md-6">
      <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
        <div class="col p-4 d-flex flex-column position-static">
          <strong class="d-inline-block mb-2 text-primary">Posts</strong>
          {{-- @if (count($posts) >0)
              @foreach ($posts as $post) --}}
                  <h3 class="mb-0">{{$recent_post->title}}</h3>
                  <div class="mb-1 text-muted">{{$recent_post->created_at}}</div>
                  <p class="card-text mb-auto">
                    {{strlen($recent_post->body) > 50? substr($recent_post->body,0,50).'...':$recent_post->body}}
                  </p>
                  <a href="/posts/{{$recent_post->id}}" class="stretched-link">Continue reading</a>
              {{-- @endforeach
          @endif --}}
          
          
        </div>
        <div class="col-auto d-none d-lg-block">
          <svg class="bd-placeholder-img" width="200" height="250" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><rect width="100%" height="100%" fill="#FF9933"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
        </div>
      </div>
    </div>
    @endforeach
    
  </div>
  @endif
</div>

<main role="main" class="container">
  <div class="row">
    <div class="col-md-8 blog-main">
      {{-- <h3 class="pb-4 mb-4 font-italic border-bottom">
        From the Firehose
      </h3> --}}

      <div class="blog-post">
        <h2 class="blog-post-title">Why E-Counselling?</h2>
        {{-- <p class="blog-post-meta">January 1, 2014 by <a href="#">Mark</a></p> --}}

        <p>This blog post shows a few different types of content that’s supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>
        <hr>
        <p>Cum sociis natoque penatibus et magnis <a href="#">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>
        <blockquote>
          <p>Curabitur blandit tempus porttitor. <strong>Nullam quis risus eget urna mollis</strong> ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
        </blockquote>
         <blockquote>
          <p>Curabitur blandit tempus porttitor. <strong>Nullam quis risus eget urna mollis</strong> ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
        </blockquote>
        <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
       
      </div><!-- /.blog-post -->

    </div><!-- /.blog-main -->

    <aside class="col-md-4 blog-sidebar">
      <div class="p-4 mb-3 bg-light rounded">
        {{-- <h4 class="font-italic">Upcomming Events</h4> --}}
        <div class="card" style="width: 18rem; margin-left:0px;">
        <div class="card-header" style="background-color:#FF9A31; color:white;">
          Upcomming Events
        </div>
        <ul class="list-group list-group-flush">
          <li class="list-group-item">Cras justo odio</li>
          <li class="list-group-item">Dapibus ac facilisis in</li>
          <li class="list-group-item">Vestibulum at eros</li>
          <li class="list-group-item">Graduation Ceremony at Pavillion on 26th Nov 2019 </li>
          <li class="list-group-item">Vestibulum at eros</li>
        </ul>
      </div>
      </div>

     

      <div class="p-4" style=" margin-left:0px;">
        <h4 class="font-italic">Elsewhere</h4>
        <ol class="list-unstyled">
          <li><a href="#">GitHub</a></li>
          <li><a href="#">Twitter</a></li>
          <li><a href="#">Facebook</a></li>
        </ol>
      </div>
      {{-- <button id="BtnChat" href class="open-button"class="" title="Open Chat" style="" >Chat</button> --}}
     <a href="/chat" title="Open Chat" class="open-button">Chat</a>
    </div>
    </aside><!-- /.blog-sidebar -->

  </div><!-- /.row -->

</main><!-- /.container -->
 
@endsection

 
