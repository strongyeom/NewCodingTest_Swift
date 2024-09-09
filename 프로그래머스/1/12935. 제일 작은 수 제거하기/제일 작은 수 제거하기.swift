func solution(_ arr:[Int]) -> [Int] {
    var result: [Int] = arr
    guard arr.count != 1 else { return [-1] }
    
    let minNum = arr.min()!
    if let index = result.firstIndex(of: minNum) {
        result.remove(at: index)
    }
    return result
}