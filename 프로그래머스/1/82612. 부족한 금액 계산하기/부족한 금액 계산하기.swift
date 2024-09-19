import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    let remainValue = (1...count).map { $0 * price}.reduce(0) { $0 + $1 }
    return money - remainValue > 0 ? 0 : Int64(abs(money-remainValue))
}