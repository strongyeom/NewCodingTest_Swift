import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    
    var result = 0
    for i in 0..<absolutes.count {
        result += signs[i] == true ? absolutes[i] : -absolutes[i]
    }
    return result
}