import Foundation

func calculater(number: Int) -> Set<Int> {
    
    var first = Int(sqrt(Double(number)))
    var firstSet: Set<Int> = []
    
    for i in 1...first {
        if number % i == 0 {
            firstSet.insert(i)
            if i != number / i {
                firstSet.insert(number/i)
            }
        }
    }
    
    return firstSet
}

func solution(_ n:Int, _ m:Int) -> [Int] {
    
    // 최대 공약수와 최소 공배수 
    // 최대 공약수 두 수를 나누었을때 가장 큰 수
    // 최소 공배수 두 수의 공통 적인 가장 작은 수 
    
    // 최대 공약수 두수의 약수중 공통적인 부분중에서 가장 큰 수 
    
    // 1. 두수의 약수를 각각 구하고, Set에 넣고 Set의 성질인 교집합 적용 -> Max 값 확인 
    // 2. 최소 공배수 최대 공약수를 가지고 나누고, 최대 공약수 * 1. 나머지 * 2. 나머지 
    
    var firstNumSet = calculater(number: n)
    var secondNumSet = calculater(number: m)
    print(firstNumSet, secondNumSet)
    
    let interSectionSetMaxNum = firstNumSet.intersection(secondNumSet).max()!
    print(interSectionSetMaxNum)
    
    var minValue = interSectionSetMaxNum * (n / interSectionSetMaxNum) * (m / interSectionSetMaxNum)
    if interSectionSetMaxNum == 1 {
       minValue = n * m
    }
    print([interSectionSetMaxNum, minValue])
    return [interSectionSetMaxNum, minValue]
}