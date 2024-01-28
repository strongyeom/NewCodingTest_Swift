import Foundation

func solution(_ food:[Int]) -> String {
    
    // 똑같은 양을 먹어야함 ex) 1번 음식이 3개라면 1,1 -> 1개가 남음
    
    var emptyString : String = ""
    
    for i in 1..<food.count {
       var a1 = food[i] / 2
        if a1 > 0 {
            for j in 1...a1 {
                emptyString += String(i)
            }
        }
    }
    
    var result =  emptyString + "0" + emptyString.reversed()
    return result
}