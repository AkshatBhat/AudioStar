{{-- @extends('layouts.app')

@section('content') --}}


<div class="wrapper">
<div class="sticky" id="sticky">
        <p id="np"></p>
	</div>
	
    <div style="padding: 10px;"></div>
	<div class="non-sticky">		
        <h4 style="padding-left: 10px; color: #fff;">All Music</h4>
        <div class="side-to-side">
		
     
            @php
                $i = 0;
            @endphp
            
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
                        echo '</div>';
                        echo '<br>';
                        echo '<div class="side-to-side">';
                    }
                @endphp
            @endforeach
            
        </div>		
	</div>
</div>
	
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

