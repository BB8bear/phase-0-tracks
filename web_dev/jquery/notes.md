jQuery notes

resources:
w3schools.com
jquery.com
wikipedia.org/wiki/jQuery
Codecademy

I will start researching jquery at wikipedia to get an overview for no more than 15 minutes, then move on to w3schools resource for 30-45 minutes. Then I will look at jquery's official website for any documentation once I have a better idea of what the language is about, for about 15 minutes. Finally, I will go through what I can at codecademy's tutorials for jquery so I can try out the concepts I have read along the way for the remaining 45 minutes. 

I will take a short water/bathroom break after going through w3schools' material, and may stop to test out ideas or concepts along the way during the course of my research. 

----------------------------------

Wikipedia notes:
jQuery is a js library that is intended to make navigating a document, selecting DOM elements, creating animations, handling events, and developing Ajax applications easier.

jQuery principles:
- separation of js and html
- brevity and clarity
- elimination of cross-browser incompatibilities
- easy add new events, elements, methods and make them reusable

how to include the jQuery library in an HTML document:
<script src="jquery.js"></script>
OR directly from a CDN:
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

w3schools notes:
to use jQuery from Google or Microsoft - 
Google:
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>

Microsoft:
<head>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>
</head>

Basic syntax - 
$ to define/access jQuery
(selector) to query HTML elements
jQuery .action() to be performed on the elements

examples - 
$("p").hide() - hides all <p> elements
$(".test").hide() - hides all elements with the class="test"
$("#test").hide() - hides all elements with the id="test"

jQuery uses CSS sytnax to select elements

Document Ready Event - prevents jQuery code from running before document has finished loading

$(document).ready(function(){

   // jQuery methods go here...

});

OR 

$(function(){

   // jQuery methods go here...

});


