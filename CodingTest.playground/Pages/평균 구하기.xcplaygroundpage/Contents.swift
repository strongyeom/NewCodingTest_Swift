//: [Previous](@previous)

import Foundation

func solution(_ arr:[Int]) -> Double {
    
    let answer = arr.map { Double($0) }.reduce(0) { ($0 + $1) }
    return answer / Double(arr.count)
}

let result = solution([1,2,3,4])
print(result)
//: [Next](@next)
