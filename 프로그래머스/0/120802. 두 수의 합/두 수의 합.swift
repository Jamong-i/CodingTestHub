import Foundation

func solution(_ num1: Int, _ num2: Int) -> Int {
    // 제한 사항
    guard (-50_000...50000).contains(num1) && (-50_000...50000).contains(num2) else {
        fatalError("제한사항: -500,000 이상 500,000 이하의 수를 받음")
    }
    
    // 문제 풀이
    var answer: Int = num1 + num2
    return answer
}