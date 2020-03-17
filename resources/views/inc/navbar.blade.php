<link rel="stylesheet" href="{{asset('css/styles.css')}}">
<div>
    <ul>
        <li><img src="{{asset('images/logo.png')}}" alt="main logo" height="60"></li>
        <li><a href="/">Home</a></li>
        <li><a href="/allmusic">All Music</a></li>
        <li><a href="/myplaylists">My Playlists</a></li>
        <li><a href="/likedsongs">Liked Songs</a></li>
        <i onclick="showDropdown()" style="float: right; padding-top: 18px; padding-right: 20px; color: #fff;" class="fa fa-ellipsis-v" id="menubutton"></i>
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