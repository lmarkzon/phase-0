// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

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
// //so it doesn't loop FOREVER and knows how to separate and when to start?
//   	output.push(digits.splice(0, 3).join('')); 
//(0, 3) (index now 0 since reversed string so start at the first number, 
//and we want it to split into separate groups every 3 numbers, then join each)

//    	digits = output.join(',').split('');
//       //joins the strings where commas are, splits at spaces
//     output = digits.reverse().join('')
//     //reverse back, and then join remaining spaces!!

//   console.log(output);
      
// }

// Refactored Solution
function separateCommas(number) {
  var output = [ ];
  var digits = number.toString().split("").reverse();
  
  while (digits.length > 0)
//so it doesn't loop FOREVER and knows how to separate and when to start?
  	output.push(digits.splice(0, 3).join('')); 
//(0, 3) (index now 0 since reversed string so start at the first number, 
//and we want it to split into separate groups every 3 numbers, then join each)

   	digits = output.join(',').split('');
      //joins the strings where commas are, splits at spaces
    output = digits.reverse().join('')
    //reverse back, and then join remaining spaces!!

  console.log(output);
      
}



// Your Own Tests (OPTIONAL)
separateCommas(10000)



// Reflection
// - What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
	//
// - What did you learn about iterating over arrays in JavaScript?

// - What was different about solving this problem in JavaScript?

// - What built-in methods did you find to incorporate in your refactored solution?
