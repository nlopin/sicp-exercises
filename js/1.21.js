const isDivisable = (num, test) => num % test === 0

function findSmallestDivisor(n) {
  const maxDivisor = Math.sqrt(n)
  for (let test = 2; test <= maxDivisor; test++) {
    if (isDivisable(n, test)) return test
  }

  return n
}

for (const num of [199, 1999, 19999]) {
  console.log(findSmallestDivisor(num))
}