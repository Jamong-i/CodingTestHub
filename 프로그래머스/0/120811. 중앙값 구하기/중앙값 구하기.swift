import Foundation

func solution(_ array:[Int]) -> Int {
    guard array.count % 2 == 1 else {
        fatalError("제한사항: 배열의 길이가 홀수가 아님")
    }
    
    guard 1...99 ~= array.count else {
        fatalError("제한사항: 0보다 크거나 100보다 작은 배열이 아님")
    }
    
    guard array.allSatisfy({ -999...999 ~= $0 }) else {
        fatalError("제한사항: -1,000보다 크거나 1,000보다 작은 배열의 원소값이 아님")
    }
    
    let result: [Int] = array.sorted()
    
    return result[result.count / 2]
}