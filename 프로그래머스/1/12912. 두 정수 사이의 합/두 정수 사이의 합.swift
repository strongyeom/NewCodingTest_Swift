func solution(_ a:Int, _ b:Int) -> Int64 {
    
    // 1. 범위 설정해서 for문으로 정리 할 수 있음
    // 2. 범위 설정해서 map, reduce를 사용할 수 있음 
    // 3. 작은 수 부터 해야 되기 때문에 a 와 b 값을 비교 
    guard a != b else { return Int64(a) }
    var resultArray: [Int] = a > b ? (b...a).map{ $0 } : (a...b).map { $0 }
    let result = resultArray.map { $0 }.reduce(0) { $0 + $1 }
    
    return Int64(result)
}