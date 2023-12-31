//: [Previous](@previous)

import Foundation

func solution(_ n:Int) -> Int {
    let answer = String(n).map { Int(String($0))! }.reduce(0) { $0 + $1}
    return answer
}

let result = solution(123)
print(result)
//: [Next](@next)
