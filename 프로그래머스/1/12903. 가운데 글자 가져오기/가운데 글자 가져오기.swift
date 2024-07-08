func solution(_ s:String) -> String {
    
    let stringToArray = s.map { String($0) }
    var result: String = ""
    var index = stringToArray.count / 2
    
    if stringToArray.count % 2 == 0 {
        
        result = stringToArray[index - 1 ] + stringToArray[index]
    } else {
        result = stringToArray[index]
    }
    
    return result
}