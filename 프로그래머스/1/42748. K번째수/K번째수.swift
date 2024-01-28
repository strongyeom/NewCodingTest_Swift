import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {

    var result: [Int] = []
    
    for i in 0..<commands.count {
        var filterArray = commands[i].filter { $0 > 0 }
        var distinct = array[filterArray[0] - 1 ... filterArray[1] - 1]
        var sortDistinct = distinct.sorted()
        result.append(sortDistinct[filterArray[2] - 1])
    }
    return result
}