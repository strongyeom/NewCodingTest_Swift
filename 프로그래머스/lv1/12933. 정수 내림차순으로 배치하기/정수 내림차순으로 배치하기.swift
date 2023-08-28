func solution(_ n:Int64) -> Int64 {
    let stringToInt: String = String(n).map { Int(String($0))! }.sorted(by: >).map { String($0) }.joined(separator: "")
    return Int64(stringToInt)!
}