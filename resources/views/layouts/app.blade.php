<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'E-Counseling') }}</title>

    <!-- Scripts -->
    {{-- <script src="{{ asset('js/app.js') }}" defer></script> --}}
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdn.ckeditor.com/4.13.0/standard/ckeditor.js"></script>
    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <style>
       .open-button{
            /* Hidden by default */
            position: fixed; /* Fixed/sticky position */
            bottom: 20px; /* Place the button at the bottom of the page */
            right: 30px; /* Place the button 30px from the right */
            z-index: 99; /* Make sure it does not overlap */
            border: none; /* Remove borders */
            outline: none; /* Remove outline */
            background-color:#FF9A31; /* Set a background color */
            color: white; /* Text color */
            cursor: pointer; /* Add a mouse pointer on hover */
            padding: 15px; /* Some padding */
            border-radius: 10px; /* Rounded corners */
            font-size: 18px; /* Increase font size */
       }

       /* The popup chat - hidden by default */
            .chat-popup {
            display: none;
            position: fixed;
            bottom: 0;
            right: 15px;
            border: 3px solid #f1f1f1;
            z-index: 9;
            }

            /* Add styles to the form container */
            .form-container {
            max-width: 300px;
            padding: 10px;
            background-color: white;
            }

            /* Full-width textarea */
            .form-container textarea {
            width: 100%;
            padding: 0px;
            margin: 5px 0 5px 0;
            border: none;
            background: #f1f1f1;
            resize: none;
            min-height: 50px;
            }
            #app{
                min-height:700px;
            }

    </style>
</head>
<body>
    
    <div id="app">
        @include('inc.navbar')
        <br>
        <div class="container" style="margin-top: 70px !important">
            @include('inc.messages')
            @yield('content')
        </div>
        <br><br>
        @yield('scripts')
    </div>
    <footer>
         @include('inc.footer')
    </footer>
    
  
    {{-- <script src="https://js.pusher.com/5.0/pusher.min.js"></script> --}}
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    {{-- <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.min.js"></script> --}}
    <script src="{{ asset('js/app.js') }}"></script>
    <script src="/vendor/unisharp/laravel-ckeditor/ckeditor.js""></script>
    <script>
        CKEDITOR.replace( 'article-ckeditor' );
    </script>
     <script>
         var receiver_id ='';
         var my_id = "{{ Auth::id() }}";
         $(document).ready(function(){
                // ajax setup form csrf token
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

           // // Enable pusher logging - don't include this in production
        //     Pusher.logToConsole = true;

        //    var pusher = new Pusher('386e94dd360812fc29f2', {
        //     cluster: 'ap2',
        //     forceTLS: true
        //     });

        //     var channel = pusher.subscribe('my-channel');
        // channel.bind('my-event', function (data) {
        //      alert(JSON.stringify(data));
        //     if (my_id == data.from) {
        //         $('#' + data.to).click();
        //     } else if (my_id == data.to) {
        //         if (receiver_id == data.from) {
        //             // if receiver is selected, reload the selected user ...
        //             $('#' + data.from).click();
        //         } else {
        //             // if receiver is not seleted, add notification for that user
        //             var pending = parseInt($('#' + data.from).find('.pending').html());
        //             if (pending) {
        //                 $('#' + data.from).find('.pending').html(pending + 1);
        //             } else {
        //                 $('#' + data.from).append('<span class="pending">1</span>');
        //             }
        //         }
        //     }
        // });

            $('.user').click(function(){
                console.log('click detected');
                //YOU CAN GO ON....
                $('.user').removeClass('active');
                $(this).addClass('active');

                receiver_id = $(this).attr('id');
                // alert(receiver_id);
                $.ajax({
                    type: "get",
                    url: "/message/" + receiver_id, //create it in route
                    data: "",
                    cache: false,
                    success: function (data) {
                       // console.log(data);
                    $('#messages').html(data);
                    $("#msgbox").show();
                        scrollToBottomFunc();
                    },
                    error:function(){
                        console.log('error');
                    }
                });
            });

            //send message
            var message; 
            $(document).on('keyup', '.input-text input', function (e) {
             message = $(this).val();
            // check if enter key is pressed and message is not null also receiver is selected
            if (e.keyCode == 13 && message != '' && receiver_id != '') {
                    // alert(message);
                    $(this).val(''); //while you press enter, text box becomes empty
                   var datastr = "receiver_id=" + receiver_id + "&message=" + message;
                   $.ajax({
                        type: "post",
                        url: "message", // need to create this post route
                        data: datastr,
                        cache: false,
                        success: function (data) {
                        },
                          error: function (jqXHR, status, err) {
                        },
                        complete: function () {
                            scrollToBottomFunc();
                        }
                   });
                  // location.reload();
                   $.ajax({
                    type: "get",
                    url: "message/" + receiver_id, //create it in route
                    data: "",
                    cache: false,
                    success: function (data) {
                       // console.log(data);
                    $('#messages').html(data);
                        scrollToBottomFunc();
                    },
                    error:function(){
                        console.log('error');
                    }
                });
                }
            });

            setInterval(() => {
            //    keepMessage();
            $.ajax({
                    type: "get",
                    url: "message/" + receiver_id, //create it in route
                    data: "",
                    cache: false,
                    success: function (data) {
                       // console.log(data);
                    $('#messages').html(data);
                        scrollToBottomFunc();
                        
                    },
                    error:function(){
                        console.log('error');
                    }
                });
            //    returnMessage();
        }, 4000);

         });

        var message2; 
        function keepMessage() {
          $(document).on('keyup','.input-text input', function (e){
             message2 =$(this).val();
             //console.log(message2);
        });  
        } 
        function returnMessage() {
          $(".input-text input").val(message2);
          $(".input-text input").focus();
        } 
          //  a function to scroll down auto
        // function scrollToBottomFunc() {
        //     $('.message-wrapper').animate({
        //         scrollTop: $('.message-wrapper').get(0).scrollHeight
        //     }, 50);
        // } 

        // $(document).ready(function(){
        // $("input").keyup(function(event){ 
        //     $("div").html("Key: " + event.which);
        // });
        // });
        
        // if ($(document).on('keyup','.input-text input')) =true{
        //     console.log("True");
        // } else {
            
        // }    
         function scrollToBottomFunc() {
            $('.message-wrapper').scrollTop($('.message-wrapper')[0].scrollHeight);
        }   

     </script>
</body>

</html>
