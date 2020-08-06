const square = x => x * x

const sumOfSquaresMax = (x, y, z) => {
    if (x < y && x < z) {
        return square(y) + square(z)
    } else if (y < x && y < z) {
        return square(x) + square(z)
    } else {
        return square(x) + square(y)
    }
}

console.assert(sumOfSquaresMax(5, 10, 15) === 325)
console.assert(sumOfSquaresMax(10, 5, 15) === 325)
console.assert(sumOfSquaresMax(15, 10, 5) === 325)