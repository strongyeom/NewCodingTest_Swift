func solution(_ n:Int64) -> [Int] {
    
    // 1. while문
    // 2. String -> Array -> reversed -> Int
    
    var initialValue = Int(n)
    var result: [Int] = []
    while initialValue != 0 {
        result.append(initialValue % 10)
        initialValue = initialValue / 10
    }
    
    
    return result
}