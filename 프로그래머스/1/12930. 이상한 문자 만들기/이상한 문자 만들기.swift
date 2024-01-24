func solution(_ s:String) -> String {
    // 단어별로 짝 / 홀
    // 0번째 인덱스는 짝수  ==> 단어의 홀수번째 인덱스가 대문자, 짝수번째 소문자
    
    let componentsArray = s.components(separatedBy: " ")
    var doubleArray: [String] = []
    
    print(componentsArray)
    for i in componentsArray {
        var value: String = ""
        var aa: [String] = []
        for j in i {
            
            aa.append(String(j))
        }
        
        for k in 0..<aa.count {
            if k == 0 {
                value += String(aa[k]).uppercased()
            } else if k % 2 == 0 {
                value += String(aa[k]).uppercased()
            } else {
                value += String(aa[k]).lowercased()
            }
        }
        
        doubleArray.append(value)
    }
    return doubleArray.joined(separator: " ")
}