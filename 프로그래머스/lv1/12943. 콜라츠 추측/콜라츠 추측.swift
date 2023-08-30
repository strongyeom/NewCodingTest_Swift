import Foundation

func solution(_ num:Int) -> Int {
    
    var count = 0
    
    var result = num
    
    guard num != 1 else { return 0 } 

    while result >= 0 {
        
        
        if result%2 == 0 {
            result = result/2
        } else {
            result = result * 3 + 1
        }
        count += 1
        if result == 1 {
            return count
        }
        
        if count == 500 {
            return -1
        }
    }
    
    return 0
}