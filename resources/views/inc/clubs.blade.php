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
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                <img class="card-img-top" src="/storage/cover_images/Techno Science.jpg" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Techno Science</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn btn-primary">Follow Us on Facebook</a>
                </div>
                </div>
            </div>
             <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                <img class="card-img-top" src="/storage/cover_images/AIESEC.jpg" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">AIESEC</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn btn-primary">Follow Us on Facebook</a>
                </div>
                </div>
            </div>
             <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                <img class="card-img-top" src="/storage/cover_images/NT_Logo.ico" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Nariphon Technologies</h5>
                    <p class="card-text">Software & Web Apps Developing Company. Also deals with computer electronics</p>
                    <a href="#" class="btn btn-primary">Follow Us on Facebook</a>
                </div>
                </div>
            </div>
        </div>
    </div>

@endsection
