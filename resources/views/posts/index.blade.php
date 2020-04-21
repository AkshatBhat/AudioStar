<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="{{asset('css/styles.css')}}">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
        <title>{{config('appname','AudioStar')}}</title>
    </head>
    <body>
        <div>
            <ul class="ulist">
                <li><img src="{{asset('images/logo.png')}}" alt="main logo" height="60"></li>
                <li><a href="/">Home</a></li>
                <li><a href="/allmusic">All Music</a></li>
                <li><a href="/myplaylists">My Playlists</a></li>
                <li><a href="/likedsongs">Liked Songs</a></li>
                <i onclick="showDropdown()" style="float: right; padding: 22px; color: #fff;" class="fa fa-ellipsis-v" id="menubutton"></i>
                <div class="container h-100">
                    <div class="d-flex justify-content-center h-100">
                        <div class="searchbar">
                            <input class="search_input" type="text" name="" placeholder="Search...">
                            <a href="#" class="search_icon"><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                </div>
            </ul>
            <div id="myDropdown" class="dropdown-content">
                <a href="/">Home</a>
                <a href="/about">About</a>
                <a href="/contact">Contact</a>
            </div>
        </div>
        <div class="wrapper" id="wrapper">
            <div style="padding: 10px;"></div>
            <div class="non-sticky">        
                @if(count($captions)>0)
                    @foreach($captions as $capt)
                        <h4 style="padding-left: 10px; color: #fff;">{{$capt}}</h4>
                        <div class="side-to-side">
                            
                            @php
                                $i = 0;
                            @endphp
                            @if ($capt=='English Songs')
                                @foreach ($englishsongs as $es)
                                    @php
                                        $i++;   
                                    @endphp
                                    <div class="component" id="{{$es->id}}">
                                        <a href="#{{$es->id}}"><img src="{{$es->song_image_url}}" alt="{{$es->title}} image" height = 200 width = 200></a><br>
                                        <div style="padding: 5px;"></div>
                                        <label class="songname" for="{{$es->id}}">
                                            <div style="margin-bottom: 0;">{{$es->title}}</div><div style="font-size: small; margin-top: 0;">{{$es->artist}}</div>
                                        </label>
                                    </div>
                                    @php
                                        if ($i==5) {
                                        break;
                                        }
                                    @endphp
                                @endforeach
                            @endif

                            @if ($capt=='Hindi Songs')
                                @foreach ($hindisongs as $hs)
                                    @php
                                        $i++;   
                                    @endphp
                                    <div class="component" id="{{$hs->id}}">
                                        <a href="#{{$hs->id}}"><img src="{{$hs->song_image_url}}" alt="{{$hs->title}} image" height = 200 width = 200></a><br>
                                        <div style="padding: 5px;"></div>
                                        <label class="songname" for="{{$hs->id}}">
                                            <div style="margin-bottom: 0;">{{$hs->title}}</div><div style="font-size: small; margin-top: 0;">{{$hs->artist}}</div>
                                        </label>
                                    </div>
                                    @php
                                        if ($i==5) {
                                        break;
                                        }
                                    @endphp
                                @endforeach
                            @endif
                            
                            @if ($capt=='Newest Releases')
                                @foreach ($posts as $post)
                                    @php
                                        $i++;   
                                    @endphp
                                    <div class="component" id="{{$post->id}}">
                                        <a href="#{{$post->id}}"><img src="{{$post->song_image_url}}" alt="{{$post->title}} image" height = 200 width = 200></a><br>
                                        <div style="padding: 5px;"></div>
                                        <label class="songname" for="{{$post->id}}">
                                            <div style="margin-bottom: 0;">{{$post->title}}</div><div style="font-size: small; margin-top: 0;">{{$post->artist}}</div>
                                        </label>
                                    </div>
                                    @php
                                        if ($i==6) {
                                        break;
                                        }
                                    @endphp
                                @endforeach
                            @endif
                            
                        </div>
                        <br>
                    @endforeach
                @endif
            </div>
        </div>
        <br><br><br>
        <div id="footer" class="container-audio hidden">
            <audio id="audio" controls>
                <source src="" type="audio/mpeg">
                Your browser does not support the audio element.
            </audio>
        </div>
    </body>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
    <script src="{{asset('js/script.js')}}"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            bindComponentClick();
        });

        function bindComponentClick() {
            $(".component").on('click', function() {
                let compId = parseInt($(this).attr("id"));
                console.log(compId);
                let songs = ({!!json_encode($posts->toArray(),JSON_HEX_TAG)!!});
                console.log(songs);
                for (let i = 0; i < songs.length; i++) {
                    let obj = songs[i];
                    if (obj.id === compId) {
                        console.log(obj.song_source_url);
                        let audio = document.getElementById("audio");
                        audio.src = obj.song_source_url;
                        $('#footer').fadeOut(function() {
                            $('#footer').addClass('hidden');
                            return 500;
                        });
                        $('#footer').fadeIn(function() {
                            $('#footer').removeClass('hidden');
                            return 500;
                        });
                        audio.play();
                        break;
                    }
                }
            });
        }
    </script>
</html> 
