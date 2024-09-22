import Foundation

func solution(_ t:String, _ p:String) -> Int {
    // 1. 이중 반복문을 상용해서 비교 => 전체를 한번씩 무조건 돌기 때문에 시간복잡도 큼
    let arrayT = t.map { String($0) }
    var count: Int = 0
    
    for i in 0..<arrayT.count {
        var firstString: String = String(arrayT[i])
        for j in i+1..<arrayT.count {
            if firstString.count != p.count {
                firstString += arrayT[j]
            } else {
                break
            }
        }
        if Int(firstString)! <= Int(p)! && firstString.count == p.count {
            count += 1
        }
        
    }
    print(count)
    return count
}