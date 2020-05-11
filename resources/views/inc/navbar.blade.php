<link rel="stylesheet" href="{{asset('css/styles.css')}}">
<div>
    <ul>
        <li><img src="{{asset('images/logo.png')}}" alt="main logo" height="60"></li>
        <li><a href="/">Home</a></li>
        <li><a href="/allmusic"></a></li>
    
        <div class="container h-100">
            <div class="d-flex justify-content-center h-100">
                <div class="searchbar">
                    <form class="" action="{{URL::to('/search') }}" method="get">
                        <div class="">
                            <input type="text" name="query" class="search_input" placeholder="search here">
                                <span class="">
                                    <button type="submit" name="button" class="search_icon">
                                    <span class="fa fa-search"></span>  
                                    </button>
                                </span>
                        <div>
                    </form>
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