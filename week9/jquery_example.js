// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
 //link the image

//RELEASE 1:

 //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
 //Add code here to select elements of the DOM
$('.mascot').css({'background-color': 'green'})

//RELEASE 3:
 // Add code here to modify the css and html of DOM elements
$("body > h1").css({
    "color": "white",
    "background-color": "blue",
    "border": "10px solid black",
    //"visibility": "hidden",
})

$("body > h1").html("qwertyuiop")
//RELEASE 4: Event Listener
 // Add the code for the event listener here
$('img').on('mouseover', function(e){
 e.preventDefault()
 $(this).attr('src', 'http://weknowyourdreamz.com/images/potato/potato-03.jpg')
})
$('img').on('mouseleave', function(e){
 e.preventDefault()
 $(this).attr('src', 'dbc_logo.png')
})
//RELEASE 5: Experiment on your own

$("img").animate({opacity: .5, height: "10000px"}, 100000)




})  // end of the document.ready function: do not remove or write DOM manipulation below this.