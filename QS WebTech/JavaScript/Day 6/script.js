function findSum(a, b) {
  const total = a + b;
  console.log(total);
}

// findSum(10,20)
function findPower(base, expo) {
  const pow = base ** expo;
  return pow;
}
const val = findPower(10, 2);
// console.log(val)

function greet(username) {
  console.log("Good Morning", username);
}
// greet()
//console.log(greet("Akash"));

function greetUser(name = "user") {
  console.log("hello", name);
}
// greetUser()
// greetUser("Aakash")

// Function as Expression:

const multiplication = function prod(i, j) {
  return i * j;
};
// console.log(multiplication(5, 9));

const addition = function(i, j) {
  return i + j;
};
// console.log(addition(5, 9));

const hii = function(){
  console.log("Hii Aakash")
}
hii()