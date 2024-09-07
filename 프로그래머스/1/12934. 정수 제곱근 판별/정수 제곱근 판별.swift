func solution(_ n:Int64) -> Int64 {
    // n을 반복문 돌기에는 너무 오랜 시간이 걸리니까
    // 약수를 구하는 식을 구하고 해당 약수중에서 제곱을 했을떄 n이 나오는걸 체크 
    var sum: Int64 = 0
    for i in 1...n {
        if i * i == n {
            sum = i + 1
            return sum * sum
        }
        
        if sum == 0 {
            sum = -1
        }
        
    }
    
    return sum
}