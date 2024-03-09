import Foundation

func solution(_ num1:Int, _ num2:Int) -> Int {
    guard 0...100 ~= num1 && 0...100 ~= num2 else {
        fatalError("제한사항: 0과 100의 사이의 값이 아님")
    }
    return num1 * num2
}