func solution(_ arr:[Int]) -> Double {
    
    let total = Double(arr.reduce(0) { $0 + $1 }) / Double(arr.count)
    return total
}