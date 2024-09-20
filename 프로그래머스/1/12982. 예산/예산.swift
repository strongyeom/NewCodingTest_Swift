import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    
    let sortD = d.sorted(by: <)
    
    var total = budget
    var count: Int = 0
    
    for i in sortD {
        total -= i
        if total >= 0 {
            count += 1
        } else {
            break
        }
    }
    
    return count
}