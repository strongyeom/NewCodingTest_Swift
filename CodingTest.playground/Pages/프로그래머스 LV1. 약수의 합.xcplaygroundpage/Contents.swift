//: [Previous](@previous)

import Foundation

func solution(_ n:Int) -> Int {
    var result = 0
    // 제한사항을 꼭 지키자
    guard n > 0 else { return 0 }
    
    for i in 1...n {
        if n%i == 0 {
            result += i
        }
    }
    return result
}
let result = solution(25)
print(result)
//: [Next](@next)
// 1, 25 5, 5
