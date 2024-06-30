func solution(_ arr:[Int]) -> Double {
    let result = Double(arr.reduce(0) { $0 + $1}) / Double(arr.count)
    return result
}