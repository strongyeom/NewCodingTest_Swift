import Foundation

func solution(_ number: Int, _ limit: Int, _ power: Int) -> Int {
    var result = 0
    
    for i in 1...number {
        var count = 0
        let sqrtI = Int(Double(i).squareRoot())
        for j in 1...sqrtI {
            if i % j == 0 {
                count += (j * j == i) ? 1 : 2 // 완전제곱수인 경우 약수가 중복되므로 1을 더하고, 아닌 경우는 2를 더함
            }
        }
        
        if count > limit {
            result += power
        } else {
            result += count
        }
    }
    
    return result
}