const p = () => p()

const test = (x, y) => x === 0 ? x : y

console.log(test(0, p()))