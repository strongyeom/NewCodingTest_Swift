import Foundation

func isPrime(number: Int) -> Bool {
    if number < 4 {
        return number == 1 ? false : true
    }
    
    // 소수는 양의 약수로 1과 자신만을 가진 자연수이며 합성수는 양의 약수가 1과 자기자신을 포함하여 3개 이상인 자연수이다.
    for i in 2...Int(sqrt(Double(number))) {
        if number % i == 0 {
            return false
        }
    }
    return true
}

func solution(_ n:Int) -> Int {
    
    var count = 0
    
    for i in 2...n {
        if isPrime(number: i) {
            count += 1
        }
    }

    return count
}