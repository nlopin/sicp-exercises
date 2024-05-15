const halve = (a) => a / 2
const double = (a) => 2 * a
const isOdd = (a) => a % 2 === 1

//iterative process (tail recursion)
const multiplyFast = (a, b, acc = 0) => {
  switch (true) {
    case (a === 0 || b === 0):
      return 0;
    case (b === 1):
      return a + acc;
    case (isOdd(b)):
      return multiplyFast(a, b - 1, acc + b)
    default:
      return multiplyFast(double(a), halve(b), acc)
  }
}

console.assert(multiplyFast(5, 1), 5);
console.assert(multiplyFast(5, 4), 20);
console.assert(multiplyFast(5, 5), 25);