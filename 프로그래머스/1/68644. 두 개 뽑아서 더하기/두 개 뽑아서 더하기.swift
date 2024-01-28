import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    // 배열에서 두개를 뽑아 만들 수 있는 모든 요소 의 오름차순을 구하기
    
    var result = Set<Int>()
    
    for i in 0..<numbers.count {
        for j in i+1..<numbers.count {
            result.insert(numbers[i] + numbers[j])
        }
    }
    return result.sorted()
}