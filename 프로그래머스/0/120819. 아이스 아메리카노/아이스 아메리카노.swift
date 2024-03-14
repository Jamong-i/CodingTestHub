import Foundation

func solution(_ money:Int) -> [Int] {
    guard 1...1_000_000 ~= money else {
        fatalError("제한사항: 0보다 크고 1_000_000보다 작은 수가 아님.")
    }
    
    return [money / 5_500, money % 5_500]
}