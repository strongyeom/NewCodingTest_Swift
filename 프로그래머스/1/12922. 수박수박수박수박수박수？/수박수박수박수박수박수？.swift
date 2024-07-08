func solution(_ n:Int) -> String {
    
    var result: String = ""
    
//     for i in 1...n {
//         result += i%2 == 0 ? "박" : "수"
//     }
    
    
    let _ = (1...n).map {
        result += $0%2 == 0 ? "박" : "수"
    }
    
    return result
}