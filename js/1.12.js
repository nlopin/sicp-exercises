const pascal = (i, j) => {
    if (i === j || j === 1) {
        return 1
    } else {
        return pascal(i - 1, j) + pascal(i - 1, j - 1)
    }
}

console.assert(pascal(1,1) === 1)
console.assert(pascal(3,2) === 2)