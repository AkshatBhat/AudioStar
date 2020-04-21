$(document).ready(function() { // Wait till the page is loaded
    $('li a[href="/"]').addClass('current');
    var activeTab = '/';
    const homeTabContent = $(".wrapper").html();
    window.history.pushState({ "html": homeTabContent, "pageTitle": "Audiostar" }, "", activeTab);

    $('.ulist li a, .dropdown-content a').on('click', function(e) {
        event.preventDefault();
        $('li a[href="' + activeTab + '"]').removeClass('current');
        activeTab = $(e.target).attr('href');
        $('li a[href="' + activeTab + '"]').addClass('current');
        if (activeTab !== '/')
            $(".wrapper").load(activeTab);
        else
            document.getElementById("wrapper").innerHTML = homeTabContent;
        window.history.pushState({ "html": document.getElementById("wrapper").innerHTML, "pageTitle": "Audiostar" }, "", activeTab);
        bindComponentClick();
    });

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
window.onpopstate = function(e) {
    if (e.state) {
        document.getElementById("content").innerHTML = e.state.html;
        document.title = e.state.pageTitle;
    }
};