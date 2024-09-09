func solution(_ arr:[Int]) -> [Int] {
    guard arr.count != 1 else { return [-1] }
    var result: [Int] = arr
    var minValue: Int = 0
    let minNum = arr.min()! // 한번 순회 
    if let index = result.firstIndex(of: minNum) { // 한번 순회 
        result.remove(at: index) // 한번 순회 
    }
    
    return result
}