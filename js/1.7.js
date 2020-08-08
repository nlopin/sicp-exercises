const EPSILON = 0.001

const avg = (x, y) => (x + y) / 2

const isGoodEnough = (guess, prevGuess) => Math.abs(guess - prevGuess) < EPSILON

const improve = (guess, x) => avg(x / guess, guess)

const sqrtIter = (guess, x, prevGuess = 0) => isGoodEnough(guess, prevGuess) ? guess : sqrtIter(improve(guess, x), x, guess)

const sqrt = x => sqrtIter(1, x)

console.log(sqrt(0.2))