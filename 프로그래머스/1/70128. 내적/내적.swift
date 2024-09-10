import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    
    let result = (0..<a.count).map { a[$0] * b[$0] }.reduce(0) { $0 + $1}
    return result
}