function exp(a, n, acc = 1) {
  switch (true) {
  case (n === 0):
    return acc;
  case (n % 2 === 1):
    return exp(a, n - 1, acc * a);
  default:
    return exp(a * a, n / 2, acc);
  }
}

console.assert(exp(3, 0), 1)
console.assert(exp(2, 1), 1)
console.assert(exp(3, 3), 27)
console.assert(exp(2, 6), 64)