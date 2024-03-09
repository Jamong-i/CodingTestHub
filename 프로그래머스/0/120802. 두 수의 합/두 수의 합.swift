import Foundation

func solution(_ num1:Int, _ num2:Int) -> Int {
    guard -50000...50000 ~= num1 && -50000...50000 ~= num2 else { 
        fatalError("제한사항: -50,000과 50,000 사이의 값이 아님")
    }
    
    return num1 + num2
}