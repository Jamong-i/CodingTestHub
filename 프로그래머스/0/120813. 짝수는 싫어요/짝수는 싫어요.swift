import Foundation

func solution(_ n:Int) -> [Int] {
    guard 1...100 ~= n else {
        fatalError("제한사항: 1과 100사이의 값이 아님")
    }
    
    var returnArray: [Int] = []
    
    for i in 1...n {
        if i % 2 != 0 {
            returnArray.append(i)
        }
    }
    
    return returnArray
}