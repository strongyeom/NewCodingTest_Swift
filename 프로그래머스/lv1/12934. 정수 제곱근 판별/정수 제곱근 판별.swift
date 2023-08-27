func solution(_ n:Int64) -> Int64 {
    
    var result = n
    
    for i in 1...n {
        if i*i == n {
            let doubleInt = i + 1
           return doubleInt * doubleInt
        }
    }
    return -1
}