func solution(_ s:String) -> String {
    
    let arrayS = s.map { String($0) }
    
    if s.count % 2 == 0 {
        return arrayS[s.count/2 - 1] + arrayS[s.count/2]
    } else {
        return arrayS[s.count/2]
    }
}