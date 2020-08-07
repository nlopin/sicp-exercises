const EPSILON = 0.001

const newIf = (cond, then, els) => cond() ? then : els

const square = x => x * x

const avg = (x, y) => (x + y) / 2

const isGoodEnough = (guess, x) => Math.abs(x - square(guess)) < EPSILON

const improve = (guess, x) => avg(x / guess, guess)

const sqrtIter = (guess, x) => {
    newIf(isGoodEnough(guess, x), guess, sqrtIter(improve(guess, x), x))
}

const sqrt = x => sqrtIter(1, x)

console.log(sqrt(2))

// same thing as in 1.6.clj. Infinite loop because `newIf` is not a special form,
// hence according to applicative-order eval all arguments are evaluated.
// `if` is a special form and do not evaluate the code which was not reached