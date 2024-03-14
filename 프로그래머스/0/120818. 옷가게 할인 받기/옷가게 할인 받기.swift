import Foundation

func solution(_ price:Int) -> Int {
    guard 10...1_000_000 ~= price else {
        fatalError("제한사항: 10에서 1,000,000원 사이의 값이 아님")
    }
    
    var discountRate: Double = 0.0
    
    switch price {
    case 100_000...299_999:
        discountRate = 0.05
    case 300_000...499_999:
        discountRate = 0.1
    case 500_000...Int.max:
        discountRate = 0.2
    default:
        discountRate = 0.0
    }
    
    var result: Int = Int(Double(price) - Double(price) * discountRate)
    
    return result
}