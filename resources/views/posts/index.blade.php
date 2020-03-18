@extends('layouts.app')

@section('content')



<div id="a"></div>
<div class="wrapper">
    <div style="padding: 10px;"></div>
	<div class="non-sticky">		
		@if(count($captions)>0)
			@foreach($captions as $capt)
				<h4>{{$capt}}</h4>
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
									{{$es->title}}<span style="font-size: small;"><br>{{$es->artist}}</span>
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
									{{$hs->title}}<span style="font-size: small;"><br>{{$hs->artist}}</span>
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
									{{$post->title}}<span style="font-size: small;"><br>{{$post->artist}}</span>
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
<div id="footer" class="hidden">
	<div class="container-audio">
		<audio id="audio" controls>
			<source src="{{asset('audio/eot.mp3')}}" type="audio/mpeg">
			Your browser does not support the audio tag
		</audio>
	</div>
</div>
@endsection

@section('script')
<script type="text/javascript">
	// $(".component").on('click', function() {
	// 	$.get("{{URL::to('/songs/read-data')}}",function (data) {
	// 		console.log(data);
	// 	})
	// });

	$(".component").on('click', function() {
		let compId = parseInt($(this).attr("id"));
		console.log(compId);
		let songs = ({!! json_encode($posts->toArray(), JSON_HEX_TAG) !!});
		console.log(songs);
		for(let i=0;i<songs.length;i++)
		{
			let obj = songs[i];
			if(obj.id===compId)
			{
				console.log(obj.song_source_url);
				let audio = document.getElementById("audio");
				audio.pause();
				audio.src = obj.song_source_url;	
				audio.play();	
				$('#footer').fadeOut(function() {
					$('#footer').addClass('hidden');
					return 500;
				});
				$('#footer').fadeIn(function() {
					$('#footer').removeClass('hidden');
					return 500;
				});
			}
		}			
	});
	// var comps = document.querySelectorAll('.component');
	// comps.forEach(function(comp) {
	// 	comp.addEventListener('click',compIndex);
	// }) 

	// function compIndex()
	// {
	// 	$.get("{{URL::to('/songs/read-data')}}",function (data) {
	// 		console.log(data);	
	// })}
	// function compIndex(event)
	// {
	// 	console.log(Array.from(comps).indexOf(event.target));
	// }
</script>	
@endsection
