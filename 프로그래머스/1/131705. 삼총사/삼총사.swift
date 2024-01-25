import Foundation

func solution(_ number:[Int]) -> Int {
    
    // 배열에 있는 어떠한 수 3가지를 더해 0이 되면 count + 1 해준다.
    // 서로 다른 학생의 정수 번호가 같을 수 있음
    var count = 0
    for i in 0..<number.count {
        for j in i+1..<number.count {
            for k in j+1..<number.count {
                if number[i] + number[j] + number[k] == 0 {
                    count += 1
                   
                }
            }
        }
    }
    return count
}