// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Richard
// This challenge took me [2.5] hours.

// These are the votes cast by each student. Do not alter these objects here.

var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
  // Iterate through votes and access each name property in ballot
  // if each name not saved as a property inside voteCount, create new property for voteCount with value of 1
// else
    // increment value of property by 1
 // Now that we have voteCount filled properly, iterate through voteCount positions to identify who received MAX votes 
 // and assign corresponding name to appropriate officer position.

// __________________________________________
// Initial Solution
// for (var name in votes){
//   if(votes.hasOwnProperty(name)) {
//   var ballot = votes[name];
//     for (var position in ballot) {
//       if (voteCount[position].hasOwnProperty([ballot[position]])) {
//          voteCount[position][ballot[position]]+= 1;
//       }
//       else {
//           voteCount[position][ballot[position]] = 1
//           };
//       }
//     }
//   }

// for (var titles in voteCount) {
//   var tallies = voteCount[titles];
//   var winner = 0;
//     for (var names in tallies){
//       if (tallies[names] > winner) {
//         winner = tallies[names];
//         officers[titles] = names;
//       }
//     }
// }
      

// console.log(voteCount)



// __________________________________________
// Refactored Solution
for (var name in votes){
  if(votes.hasOwnProperty(name)) {
  var ballot = votes[name];
    for (var position in ballot) {
      if (voteCount[position].hasOwnProperty([ballot[position]])) {
         voteCount[position][ballot[position]]++;
      }
      else {
          voteCount[position][ballot[position]] = 1
          };
      }
    }
  }

for (var titles in voteCount) {
  var tallies = voteCount[titles];
  var winner = 0;
    for (var names in tallies){
      if (tallies[names] > winner) {
        winner = tallies[names];
        officers[titles] = names;
      }
    }
}
      

console.log(voteCount)
console.log(officers)


// __________________________________________
// Reflection
// What did you learn about iterating over nested objects in JavaScript?
  // That the syntax for accessing and iterating over nested objects in JS is
  // not the same as nested hashes in Ruby. Also, staying organized with your
  // curly braces, parantheses, and semi-colons is important while building
  // the code to avoid issues when you run it. 
// Were you able to find useful methods to help you with this?
  // Yes, we found the method hasOwnProperty and it was very useful, we used it 
  // quite a few times in our solution. It returns a boolean indicating whether 
  // the object has the property, listed in parantheses following the method name. 
// What concepts were solidified in the process of working through this challenge?
  // That even though it's hard to get through, pseudocoding is really an important
  // step in the process to help you understand what it is you're really trying to do.
  // It's also important to keep track of your curly braces, as well as utilize indenting
  // to organize the code, it really make's a difference with readability.


// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)