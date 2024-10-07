import Foundation

func solution(_ number:[Int]) -> Int {
    var result = 0
    for i in 0..<number.count-2 {
        for j in i+1..<number.count-1 {
            for z in j+1..<number.count {
                var count = number[i] + number[j] + number[z]
                if count == 0 {
                    result += 1
                }
            }
        }
    }
    
    return result
}