const recursive = n => n < 3 ? n : recursive(n - 1) + 2 * recursive(n - 2) + 3 * recursive(n - 3)

console.assert(recursive(2) === 2)
console.assert(recursive(3) === 4)
console.assert(recursive(4) === 11)
console.assert(recursive(5) === 25)

const iterative = n => {
    const iter = (a, b, c, count) => count <= 0 ? a : iter(a + 2 * b + 3 * c, a, b, count - 1)

    return n < 3 ? n : iter(2, 1, 0, n - 2)
}

console.assert(iterative(2) === 2)
console.assert(iterative(3) === 4)
console.assert(iterative(4) === 11)
console.assert(iterative(5) === 25)
