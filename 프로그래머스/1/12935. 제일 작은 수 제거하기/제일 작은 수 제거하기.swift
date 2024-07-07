func solution(_ arr:[Int]) -> [Int] {
    
    guard arr.count != 1 else { return [-1] }
    
    var initialArr = arr
    var previousValue : Int = arr.reduce(0) { $0 + $1 }
    var minIndex = 0
    for (index, element) in arr.enumerated() {
        
        
        if element < previousValue {
            previousValue = element
            minIndex = index
        }
    }
    
    initialArr.remove(at: minIndex)
    
   return initialArr
}