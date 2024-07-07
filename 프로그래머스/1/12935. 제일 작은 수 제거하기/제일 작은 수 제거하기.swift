func solution(_ arr:[Int]) -> [Int] {
    
    guard arr.count > 1 else { return [-1] }
    
    var min = arr.min()!
    
    let result = arr.filter { $0 != min }
    
    return result
}