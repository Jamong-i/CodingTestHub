import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    guard 1...1_000 ~= num_list.count else {
        fatalError("제한사항: 1과 1,000사이의 배열의 길이가 아님")
    }
    
    guard num_list.allSatisfy({ 0...1_000 ~= $0 }) else {
        fatalError("제한사항: 0과 1,000사이의 원소의 값이 아님")
    }
    
    var reversedArray: [Int] = []
    
    for i in 1...num_list.count {
        reversedArray.append(num_list[num_list.count-i])
    }
    
    return reversedArray
}