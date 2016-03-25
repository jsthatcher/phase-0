// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Jack and Elizabeth Alexander

// Pseudocode
// 1. input: Integer 
// 2. output: a string, with numbers and commas (every third number)
// 3. Steps: 
//      1. Define the function 
//      2. Convert integer into a string, and then figure out the lenghth of the string.  
//           -     00045 
//               - [0] [1] [2] [3] [4]
//               - potentially we could do a counter 
//               -  Potential refactoring: var str = "How are you doing today?";
//                 var res = str.split(" ",3);
//          - how would we put a comma in every third index:
                  // we will use a for loop 
                  // counter equal to 0, condition must be smaller than length of array so we know that it stops. The i will incremement and will tell us where we are in the array to put in commas 
//              // turn array back into a string piece by piece and then every third piece that we put in we will add a comma to the string. 
//
//  4. Print the string /


/* ORGANIZE
1. input: Integer 
 2. output: a string, with numbers and commas (every third number)
 3. Steps: 
      1. Define the function 
    2. Convert integer into a string, and then figure out the lenghth of the string.  
    3. we will use a for loop 
        counter equal to 0, condition must be smaller than length of array so we know that it stops. The i will incremement and will tell us where we are in the array to put in commas 
      turn array back into a string piece by piece and then every third piece that we put in we will add a comma to the string. 
//  4. Print the string 
*/

//  Potential solution: push each item in array into new string and place comma every third integer 

// Initial Solution  
 
  for (var i = (string.length) - 1; i >= 0; i--){
   // console.log("FORLOOP");
    if ((((string.length) - i) % 3 == 0) && (i !== 0)) {
      newArray.splice((string.length - i),0,",");
    };
    (newArray.push(array[i]));
  };
 	array = finalString.split("");
  	console.log(array)
 	array = array.reverse();
 	console.log(array)
 	finalString = newArray.join("");
  
  console.log(finalString);
};



// Refactored Solution

function separateComma(int){
  var string = int.toString();
  var array = string.split("");
  var reverseArray = array.reverse(); 
  var finalArray = []
  var finalString = "";
  var finalString = "";
  var i = 0
  var subArray  = [];

  var times = array.length / 3 
  
  while (i < times){
    i++
    subArray = reverseArray.splice(0,3);
    if (subArray.length < 3) {
       }
    else{
      subArray.push(",")
    } 
  subArray = subArray.reverse();
  subArray = subArray.join('');
  finalArray.push(subArray)
  }
  
  finalArray = finalArray.reverse();
  finalString = finalArray.join('');  

  console.log(finalString)
}


// Your Own Tests (OPTIONAL)

separateComma(12345)
separateComma(1000000000)
separateComma(2)
 separateComma(12)
 separateComma(123)
 separateComma(1234)


//Reflection



