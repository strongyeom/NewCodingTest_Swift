func solution(_ s:String) -> String {
    let result = s.sorted(by: >).map { String($0) }.joined()
    return result
}