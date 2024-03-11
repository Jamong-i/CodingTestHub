import Foundation

func solution(_ slice: Int, _ n: Int) -> Int {
    guard 2...10 ~= slice, 1...100 ~= n else {
        fatalError("제한사항: 2와 10사이값이 아닌 slice 또는 1과 10사이 값이 아닌 n")
    }
    
    for i in 1...n {
        if i * slice / n >= 1 {
           return i
        }
    }
    return 0
}