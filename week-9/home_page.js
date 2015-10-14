// DOM Manipulation Challenge


// I worked on this challenge [with: Jamie].


// Add your JavaScript calls to this page:


// Release 1:
document.getElementById("release-0").className = "done";

// Release 2:
document.getElementById("release-1").style.display = "none";

// Release 3:
document.getElementsByTagName("h1")[0].innerHTML = "I completed release 2.";

// Release 4:
document.getElementById("release-3").style.backgroundColor = "#955251";

// Release 5:
document.getElementsByClassName("release-4")[0].style.fontSize = "2em";

// Release 6:
var temp = document.getElementById("hidden");
document.body.appendChild(temp.content.cloneNode(true));

// Release 7: Reflect
// - What did you learn about the DOM?
	// To be honest this is my first in-depth experience working with the DOM, 
	// at least since we worked with CSS in the early parts of phase-0. So all
	// of this felt like new material to me, it was nice to play around and 
	// experiment to learn more about how it works. It's sort of like an advanced
	// and interaction version of CSS, but using quotes so much is definitely
	// going to be an adjustment. The DOM is made up of every element on the page,
	// it's laid out in a hierarchical way that reflects the way the HTML document
	// is ordered. The way we could think of HTML as a tree, we can also think of 
	// the DOM in the same way. Elements in the DOM can have parents, children, 
	// and siblings. 
// - What are some useful methods to use to manipulate the DOM?
	// We used a bunch of methods that were useful to manipulate the DOM, such
	// as .getElementById, getElementsByTagName, .getElementsByClassName, 
	// .style, .display, .backgroundColor, .fontSize, .appendChild, .cloneNode, 
	// etc. Luckily, they're all pretty straightforward as to what exactly they 
	// do in what they're called. 