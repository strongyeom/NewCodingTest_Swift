import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    
//     var result: Int = 0
    
//     let _ = (0..<a.count).map {
//         result += a[$0] * b[$0]
//     }
    
    return (0..<a.count).map { a[$0] * b[$0] }.reduce(0) { $0 + $1 }
}