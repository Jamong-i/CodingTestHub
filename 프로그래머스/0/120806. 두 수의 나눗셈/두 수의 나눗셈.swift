import Foundation

func solution(_ num1:Int, _ num2:Int) -> Int {
    guard 1...100 ~= num1 && 1...100 ~= num2 else {
        fatalError("제한사항: 1과 100사이의 값이 아님")
    }
    return Int(Double(num1) / Double(num2) * Double(1000))
}