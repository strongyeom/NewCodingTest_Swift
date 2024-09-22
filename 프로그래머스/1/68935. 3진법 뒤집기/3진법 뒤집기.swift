import Foundation

func solution(_ n:Int) -> Int {
    // return 0
    // 3진법 어떻게 하는거야? 
    // 1200 = * 3^3 + 3^2 * 2 + 1 + 1 
    // 1 * 3^3 + 2 * 3^2 + 0 * 3 + 0 * 1

    // 1. 3진법으로 해당 수를 만들고  reversed로 쌓이게 한다음 해당 enumulater를 사용해서 인덱스를 구하고 곱하고 더해서 result 도출 
    var number = n 
    var list: [Int] = []
    var result: Int = 0
    while number > 0 {
        list.append(number % 3)
        number = number / 3
    }
    
    // 2. 3진법으로 변환된 값을 뒤집어서 10진법으로 다시 변환
    for (index, value) in list.reversed().enumerated() {
        result += value * Int(pow(3.0, Double(index)))
    }
    return result
}