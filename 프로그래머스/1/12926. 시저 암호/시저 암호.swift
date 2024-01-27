func solution(_ s:String, _ n:Int) -> String {
    
    var alphbat: String = "abcdefghijklmnopqrstuvwxyz"
    var alphbatDic: [Int: String] = [
        0:"a" , 1:"b", 2:"c", 3:"d", 4:"e", 5:"f", 6:"g", 7:"h", 8:"i", 9:"j", 10:"k",
        11: "l", 12:"m", 13:"n", 14:"o", 15:"p", 16:"q", 17:"r", 18:"s", 19:"t", 20:"u",
        21: "v", 22:"w", 23:"x", 24:"y", 25:"z"
    ]
    // 대 소문자 비교 -> value에 upper
    var lowercaseString = s.lowercased()
    var result: String = ""
    
    for i in s {
        if i.isUppercase {
            var lowcaseString = i.lowercased()
            if let rangeS = alphbat.range(of: lowcaseString) {
                let index = alphbat.distance(from: alphbat.startIndex, to: rangeS.lowerBound)
                print(index)
                var indexPlusN = index + n >= 26 ? (index + n) - 26 : index + n
                
                result += alphbatDic[indexPlusN]!.uppercased()
            }
        } else if i == " " {
            result += String(i)
        } else {
            if let rangeS = alphbat.range(of: String(i)) {
                let index = alphbat.distance(from: alphbat.startIndex, to: rangeS.lowerBound)
                print(index)
                var indexPlusN = index + n >= 26 ? (index + n) - 26 : index + n
                result += alphbatDic[indexPlusN]!
            }
        }
    }
    return result
}