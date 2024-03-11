import Foundation

func solution(_ numbers: [Int]) -> Double {
    guard numbers.allSatisfy({ 0...1_000 ~= $0 }) else {
        fatalError("제한사항: 0과 100사이의 배열의 원소값이 아님")
    }
    guard 1...100 ~= numbers.count else {
        fatalError("제한사항: 1과 100사이의 배열의 길이가 아님")
    }
    
    var sum: Int = 0
    
    for i in numbers {
        sum += i
    }
    
    return Double(sum) / Double(numbers.count)
}