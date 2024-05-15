const halve = (a) => a / 2
const double = (a) => 2 * a
const isOdd = (a) => a % 2 === 1

// recursive process
const multiply = (a, b) => {
  switch (true) {
    case (a === 0 || b === 0):
      return 0;
    case (b === 1):
      return a;
    case (isOdd(b)):
      return a + multiply(a, b - 1);
    default:
      return multiply(double(a), halve(b))
  }
}

console.assert(multiply(5, 1), 5);
console.assert(multiply(5, 4), 20);
console.assert(multiply(5, 5), 25);