// navigation.js
function handleStickyNav() {
    var header = document.getElementById("mainNav");
    var sticky = header.offsetTop;
    if (window.pageYOffset > sticky) {
        header.classList.add("sticky");
    } else {
        header.classList.remove("sticky");
    }
}

// Attach the event listener when the script loads
window.onscroll = handleStickyNav;