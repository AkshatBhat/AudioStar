$(document).ready(function() {
    'use strict';

    $("li a").on('click', function(e) {
        sessionStorage.setItem('activeTab', $(e.target).attr('href'));
    });
    var activeTab = sessionStorage.getItem('activeTab');
    if (activeTab) {
        $('li a[href="' + activeTab + '"]').addClass('current');
    } else {
        $('li a[href="/"]').addClass('current');
    }
    $("#myDropdown a").on('click', function(e) {
        sessionStorage.setItem('activeTab', $(e.target).attr('href'));
    });

    // var audio = document.getElementById("audio");
    // $(".component").on('click', function() {
    //     //console.log("component activated");
    //     $('#footer').fadeOut(function() {
    //         $('#footer').addClass('hidden');
    //         return 500;
    //     });
    //     $('#footer').fadeIn(function() {
    //         $('#footer').removeClass('hidden');
    //         return 500;
    //     });
    //     audio.pause();
    //     // audio.currentTime = 0;
    //     audio.play();
    // });
});

function showDropdown() {
    document.getElementById("myDropdown").classList.toggle("show");
}
window.onclick = function(event) {
    if (!event.target.matches('#menubutton')) {
        var dropdowns = document.getElementsByClassName("dropdown-content");
        var i;
        for (i = 0; i < dropdowns.length; i++) {
            var openDropdown = dropdowns[i];
            if (openDropdown.classList.contains('show')) {
                openDropdown.classList.remove('show');
            }
        }
    }
}