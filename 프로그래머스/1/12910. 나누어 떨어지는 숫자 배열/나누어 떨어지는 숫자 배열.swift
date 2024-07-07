func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    
    // divisor로 나누어 떨어지면 오른차순으로 정렬
    
    // 떨어지지 않으면 배열에 -1담아서 return
    
    let result = arr.filter { $0 % divisor == 0 }.sorted(by: <)
    
    if result.isEmpty {
        return [-1]
    }
    
    return result
}