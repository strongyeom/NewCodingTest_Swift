import Foundation

func solution(_ s:String) -> [Int] {
    
    var componetsS = s.map { String($0) }
    // 담아두는 배열
    var collectionArray: [String] = []
    var resultArray: [Int] = []
    for i in 0..<componetsS.count {
        // 같은 문자가 포함되어 있지 않다면
        if !collectionArray.contains(componetsS[i]) {
            resultArray.append(-1)
            collectionArray.append(componetsS[i])
        } else {
            
            if let index = collectionArray.lastIndex(of: componetsS[i]){
                resultArray.append(collectionArray.count - index)
                collectionArray.append(componetsS[i])
            }
            
        }
    }
    return resultArray
}