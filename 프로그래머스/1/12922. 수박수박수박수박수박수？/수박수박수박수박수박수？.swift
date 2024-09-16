func solution(_ n:Int) -> String {
    var result: String = ""
    for i in 1...n {
        if i%2 == 0 {
            result += "박"
        } else {
            result += "수"
        }
        // 미리 정해 놓고 n이 짝수 인지 확인 후 몫과 나머지로 하게 되면 더 빠르지 않을까?
    }
    
    
    
    return result
}