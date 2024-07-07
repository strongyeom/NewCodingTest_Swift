func solution(_ phone_number:String) -> String {
    
    // 뒷 4자리르 제외하고 한번에 바꾸는 방법은 없을까?
    // 앞에 있는 갯수만큼
    
    let count = phone_number.count - 4
    
    // 앞에서 부터 해당 번째까지 자르고, * 로 대체
    // String -> 배열로 변환
    var arrayConvert = phone_number.map { $0 }
    
    var cutArray = arrayConvert[0..<count]
    var remainArray = arrayConvert[count..<arrayConvert.count].map { String($0) }.joined()
    let starString = cutArray.map { String($0).replacingOccurrences(of: String($0), with: "*")}.joined()
    
    let result = starString + remainArray
    
    return result
}