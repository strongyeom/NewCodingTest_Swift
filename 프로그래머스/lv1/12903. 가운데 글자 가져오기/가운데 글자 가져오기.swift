func solution(_ s:String) -> String {
    let aa = s.map { String($0) }
    var result: [String] = []
    
    var count = s.count % 2
    
    if count == 0 {
        result = [aa[(s.count/2) - 1], aa[s.count/2]]
    } else {
        result = [aa[s.count/2]]
    }
    
    let answer = result.joined()
    return answer
}