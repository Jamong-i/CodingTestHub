import Foundation

func solution(_ n:Int) -> Int {
    guard 1...100 ~= n else {
        fatalError("제한사항: 1과 100사이의 값이 아님")
    }
    
    if n <= 7 {
        return 1
    } else if n % 7 != 0 {
        return n / 7 + 1 
    } else {
        return n / 7
    }
}