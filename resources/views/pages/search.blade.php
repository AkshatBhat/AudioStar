<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="{{asset('css/styles.css')}}">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
        <script src="{{asset('js/script.js')}}"></script>
        <title>{{config('appname','AudioStar')}}</title>
    </head>

    @include('inc.navbar')
    
    <div>
        <div id="sticky" class="sticky">
            <p id="np">
            </p>
        </div>

        @if (isset($product))
            <p style="color:white;">Your search result for <b> {{ $query }} </b>:</p>
                <tbody>
                    @foreach ($product as $prod)                       
                        <div class="component" id="{{$prod->id}}">
                            <a href="#{{$prod->id}}"><img src="{{$prod->song_image_url}}" alt="{{$prod->title}} image" height = 200 width = 200></a><br>
                            <div style="padding: 5px;"></div>
                                <label class="songname" for="{{$prod->id}}">
                                    <div hidden id="value">{{ $prod->id }}</div>
                                    <div style="margin-bottom: 0;" >{{$prod->title}}</div><div style="font-size: small; margin-top: 0;">{{$prod->artist}}</div>
                                </label>
                        </div>        
                    @endforeach
                </tbody>
           
        @elseif ($message != null)
        <h2 style="color:white;">{{ $message }}</h2></p>
        @endif
    </div>
    
    <div id="footer" class="container-audio hidden ">
        <audio id="audio" controls>
            <source src="" type="audio/mpeg">
            Your browser does not support the audio element.
        </audio>           
    </div>
    
</div>

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

                
                let songs = ({!!json_encode($post->toArray(),JSON_HEX_TAG)!!});
                console.log(songs);
                
                
                for (let i = 0; i < songs.length; i++) {
                    let obj = songs[i];
                    if (obj.id === compId) {
                        console.log(obj.song_source_url);
                        document.getElementById("sticky").style.display = "block";
                        document.getElementById("np").innerHTML = "Now playing song :"+" "+ obj.title;

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





