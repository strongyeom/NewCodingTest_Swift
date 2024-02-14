import Foundation

func solution(_ nums:[Int]) -> Int {
   
    
    // 소수가 무엇인가? : 1로 나누었을때 나 자신만 있는 것 , 1은 제외
    // 123, 124, 213, 234, 234,341, 342
    var sumArray: [Int] = []
    for i in 0...nums.count - 3 {
        for j in i+1...nums.count - 2 {
            for k in j+1...nums.count - 1 {
                let sum = nums[i] + nums[j] + nums[k]
                sumArray.append(sum)
                
            }
        }
    }
   
    let result = sumArray.filter { number -> Bool in
        for j in 2..<number {
            if number % j == 0 {
                return false
            }
        }
        return true
    }.count
    
    return result
}