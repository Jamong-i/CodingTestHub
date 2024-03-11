import Foundation

func solution(_ n:Int) -> Int {
    guard 1...100 ~= n else {
        fatalError("제한사항: 1과 100사이의 값이 아님")
    }
    
    return n / 7 + (n % 7 > 0 ? 1 : 0)
}