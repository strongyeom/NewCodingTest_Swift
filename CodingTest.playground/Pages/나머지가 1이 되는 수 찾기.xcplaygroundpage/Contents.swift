//: [Previous](@previous)

import Foundation

func solution(_ n:Int) -> Int {
    guard n >= 3 else { return 0 }
    
    var resultaa: [Int] = []
    
    for i in 1..<n {
        if n%i == 1 {
            resultaa.append(i)
        }
    }
    
    
    return resultaa.min()!
}

let result = solution(10)
print(result)

//: [Next](@next)
