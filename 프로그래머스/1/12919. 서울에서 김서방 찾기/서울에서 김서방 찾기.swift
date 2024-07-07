func solution(_ seoul:[String]) -> String {
var findKimIndex: Int = 0
    
    for (index, element) in seoul.enumerated() {
        if element == "Kim" {
            findKimIndex = index
        }
    }
    
    return "김서방은 \(findKimIndex)에 있다"
}