func solution(_ phone_number:String) -> String {
    var suffix = phone_number.suffix(4)
    return String(repeating: "*", count: phone_number.count - 4) + String(suffix)
}