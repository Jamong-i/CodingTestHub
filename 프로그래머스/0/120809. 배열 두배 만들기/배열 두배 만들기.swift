import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    guard numbers.allSatisfy({ -10_000...10_000 ~= $0 }) else {
        fatalError("제한사항: -10,000과 10,000사이의 원소 값이 아님")
    }
    guard 1...1_000 ~= numbers.count else {
        fatalError("제한사항: 배열의 길이가 1과 1000사이가 아님")
    }
    
    var result: [Int] = []
    
    for i in numbers {
        result.append(i * 2)
    }
    
    return result
}