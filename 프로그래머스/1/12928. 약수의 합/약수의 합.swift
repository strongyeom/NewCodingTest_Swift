import Foundation

func solution(_ n:Int) -> Int {
    
    guard n > 0 else { return 0 }
    // 제곱근 구하기
    let sqrtN = Int(Double(n).squareRoot())
    var emptyArray: [Int] = []
    
    for i in 1...sqrtN {
        if n % i == 0 {
            emptyArray.append(i)
            
            if i != n / i {
                emptyArray.append(n / i)
            }
        }
    }
    
    let result = emptyArray.sorted(by: < ).reduce(0) { $0 + $1 }
    
    return result
}
