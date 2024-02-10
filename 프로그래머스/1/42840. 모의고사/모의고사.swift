import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let first = [1,2,3,4,5]
    let second = [2, 1, 2, 3, 2, 4, 2, 5]
    let third = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    var successCount: [Int] = [0,0,0]
    var result: [Int] = []
    for (index, value) in answers.enumerated() {
        
        let firstIndex = index % first.count
        let secondIndex = index % second.count
        let thirdIndex = index % third.count
        
        if answers[index] == first[firstIndex] {
            successCount[0] += 1
        }
        
        if answers[index] == second[secondIndex] {
            successCount[1] += 1
        }
        
        if answers[index] == third[thirdIndex] {
            successCount[2] += 1
        }
        
    }
    
    let max = successCount.max()!
    for j in 0..<3 {
        if successCount[j] == max {
            result.append(j+1)
        }
    }
    
    return result.sorted()
}