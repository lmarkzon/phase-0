// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Rosslyn Sinclair-Chin.

// Pseudocode
// Create function that accepts number (integer) as input
// Convert digits to strings
	// create empty array for output to go in	
	// split number into individual digits
	// Reverse order of strings
// split strings into groups where we want commas to go
	// Insert a comma every three digits
// Put digits back together into a string
	// join the groups with a comma
	// reverse number back 
// Output: Integer as a String with commas


// Initial Solution
// function separateCommas(number) {
//   var output = [ ];
//   var digits = number.toString().split("").reverse();
  
//   while (digits.length > 0)                          
//     output.push(digits.splice(0, 3).join(''));      

//     digits = output.join(',').split('');  
                                                     
//     output = digits.reverse().join('')         

//   console.log(output);
      
// }

// Refactored Solution
function separateCommas(number) {
  var digits = number.toString().split('');
  var i = 3;
  while (i < digits.length) {
    digits.splice(-i, 0, ',');
    i += 4;
  }

  console.log(digits.join(''));
      
}


// Your Own Tests (OPTIONAL)
separateCommas(1000000000)



// Reflection
// - What was it like to approach the problem from the perspective of JavaScript? Did 
// you approach the problem differently?
	// At first we tried to approach the problem from a new and fresh perspective, and I 
  // think we ended up just attempting to use functions we didn't fully understand yet.
  // Seeing all of the similarities between Ruby and JS got us a little over-confident.
  // Once we reapproached the problem and took it step by step, we were able to come up
  // with a working solution, refactor, and have a better understanding of JS workflow.
// - What did you learn about iterating over arrays in JavaScript?
  // 
// - What was different about solving this problem in JavaScript?
  // 
// - What built-in methods did you find to incorporate in your refactored solution?
  // 