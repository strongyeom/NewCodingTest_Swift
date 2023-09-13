import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    
    
    var result: [Int] = []
    var count = 0
    for i in left...right {
        result.removeAll()
        for j in 1...i {
            for k in 1...i {
                if j*k == i {
                    result.append(j)
                }
            }
        }
        
        if result.count%2 == 0 {
            count += i
        } else {
            count -= i
        }
    }
    return count
}