import Foundation

func solution(_ t:String, _ p:String) -> Int {
    
    // 7 , 3 4번의수가 나옴
    
    var calCount = t.count - p.count
    let arrayT: [Character] = t.map { $0 }
    var arrayResult: [Int] = []
    for i in 0...calCount {
        var tCountString: String = ""
        for j in i..<(p.count + i) {
            tCountString += String(arrayT[j])
        }
        arrayResult.append(Int(tCountString)!)
    }
    print(arrayResult)
    return arrayResult.filter { $0 <= Int(p)! }.count
}