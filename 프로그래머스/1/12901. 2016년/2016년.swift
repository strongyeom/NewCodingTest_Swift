import Foundation

func solution(_ a:Int, _ b:Int) -> String {
   
    var dayOfWeek = ["THU", "FRI", "SAT", "SUN", "MON", "TUE", "WED"]
    var days: [Int] = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    var sum = 0

    var count = 0
    
    while count < a-1 {
        
        sum += days[count]
        count += 1
    }
    // 152 + 24 176
    var result = (sum + b) % 7

    return dayOfWeek[result]
}