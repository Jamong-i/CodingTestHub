import Foundation

func solution(_ n: Int) -> Int {
    guard 1...100 ~= n else {
        fatalError("제한사항: 1과 100사이의 값이 아님")
    }
    
    for i in 1...n {
        if (i * 6) % n == 0 {
            return i
        }
    }
    
    return 0
}

    // n과 6의 최대공약수로 n을 나눈 값을 리턴
    // let div: [Int] = [6,3,2,1].filter {n % $0 == 0}
    // return (n / div[0])