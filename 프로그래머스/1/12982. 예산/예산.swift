import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
 
    // [ 1, 2, 3, 4, 5]
    
    var sum = 0
    var count = 0
    for i in d.sorted() {
        sum += i
       
        if sum > budget {
            break
        }
        count += 1
    }
    return count
}