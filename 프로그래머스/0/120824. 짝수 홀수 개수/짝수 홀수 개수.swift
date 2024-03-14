import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    guard 1...100 ~= num_list.count else {
        fatalError("제한사항: 1부터 100까지의 리스트의 길이가 아님")
    }
    guard num_list.allSatisfy( { 0...1_000 ~= $0 }) else {
        fatalError("제한사항: 0부터 1,000까지의 원소의 값이 아님")
    }
    
    var odd: Int = 0
    var even: Int = 0
    
    for i in num_list {
        i % 2 != 0 ? ( odd += 1 ) : ( even += 1 )
    }
    
    return [even, odd]
}