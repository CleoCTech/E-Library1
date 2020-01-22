@extends('layouts.app')
<link href="{{ asset('css/mycss.css') }}" rel="stylesheet">
@section('content')
 @include('inc.aboutnavs')

<br><br>
<main id="main">
   {{-- <section id="section-a" class="grid">
        <ul>
            <li>
                <div class="card">
                    <img src="storage/cover_images/how-to-start-your-student-tech-club-1-728.jpg" alt="">
                    <div class="card-content">
                        <h3 class="card-tittle">Techno Science Chuka</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro ea fuga a? Nobis quisquam illum porro, dolorum alias laborum officiis.</p>
                        <a href="#" class="btn btn-primary">Follow Us on Facebook</a>
                    </div>
                </div>
            </li>
            <li>
                <div class="card">
                    <img src="storage/cover_images/IMG-20190226-WA0025.jpg" alt="">
                    <div class="card-content">
                        <h3 class="card-tittle">AIESEC</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro ea fuga a? Nobis quisquam illum porro, dolorum alias laborum officiis.</p>
                    </div>
                </div>
            </li>
            <li>
                <div class="card">
                    <img src="/storage/cover_images/how-to-start-your-student-tech-club-1-728.jpg" alt="">
                    <div class="card-content">
                        <h3 class="card-tittle">Nariphon Technologies</h3>
                        <p>Software & Web Apps Developing Company. Also deals with computer electronics.</p>
                        <a href="#" class="btn btn-primary">Follow Us on Facebook</a>
                    </div>
                </div>
            </li>
        </ul>
   </section> --}}
   <section id="section-b">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                <img class="card-img-top image-resize" src="/storage/cover_images/IMG-20190226-WA0025.jpg" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Techno Science</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn btn-primary">Follow Us on Facebook</a>
                </div>
                </div>
            </div>
             <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                <img class="card-img-top image-resize" src="/storage/cover_images/aiesec.png" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">AIESEC</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn btn-primary">Follow Us on Facebook</a>
                </div>
                </div>
            </div>
             <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                <img class="card-img-top image-resize" src="/storage/cover_images/how-to-start-your-student-tech-club-1-728.jpg" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Nariphon Technologies</h5>
                    <p class="card-text">Software & Web Apps Developing Company. Also deals with computer electronics</p>
                    <a href="#" class="btn btn-primary">Follow Us on Facebook</a>
                </div>
                </div>
            </div>
        </div>
    </div>
   </section>
    
</main>

@endsection
