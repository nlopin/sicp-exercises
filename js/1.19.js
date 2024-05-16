function fib(n) {
  return fibIter(1, 0, 0, 1, n);
}

function fibIter(a, b, p, q, n) {
  switch(true) {
  case (n === 0):
    return b;
  case (isEven(n)):
    return fibIter(
      a,
      b,
      (p * p) + (q * q),
      (q * q) + (2 * p * q),
      n / 2);
  default:
    return fibIter(
      (b * q) + (a * q) + (a * p),
      (b * p) + (a * q),
      p,
      q,
      n - 1
    );
  }
}

function isEven(n) {
  return n % 2 === 0;
}

console.log(fib(35))