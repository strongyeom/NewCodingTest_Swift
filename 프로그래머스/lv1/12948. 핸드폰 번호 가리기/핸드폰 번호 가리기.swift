func solution(_ phone_number:String) -> String {
    
    guard phone_number.count >= 4 && phone_number.count <= 20 else { return "" }
    
    var reversedPhonenumber = String(phone_number.reversed()).map { $0 }
    
    var result: [String] = []
    for i in 0..<reversedPhonenumber.count {
        if i < 4 {
            result.append(String(reversedPhonenumber[i]))
        } else {
            result.append("*")
        }
    }

    let final = String(result.joined().reversed())
    return final
}