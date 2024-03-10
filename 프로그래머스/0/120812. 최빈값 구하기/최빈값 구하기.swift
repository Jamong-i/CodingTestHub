import Foundation

func solution(_ array: [Int]) -> Int {
    guard 1..<100 ~= array.count else {
        fatalError("배열의 길이는 1 이상 99 이하입니다.")
    }
    
    guard array.allSatisfy({ 0..<1000 ~= $0 }) else {
        fatalError("배열의 원소는 0 이상 999 이하의 정수입니다.")
    }
    
    var checkDic: [Int: Int] = [:]
    
    for i in array {
        let count = checkDic[i] ?? 0
        checkDic[i] = count + 1
    }
    
    let sortedDic = checkDic.sorted { $0.value > $1.value }
    
    guard let maxFrequency = sortedDic.first?.value else { return 0 }
    
    if sortedDic.count > 1 && sortedDic[1].value == maxFrequency {
        return -1
    }
    
    return sortedDic.first?.key ?? 0
}