import Foundation

func solution(_ numer1:Int, _ denom1:Int, _ numer2:Int, _ denom2:Int) -> [Int] {
    guard 1...999 ~= numer1, 1...999 ~= denom1, 1...999 ~= numer2, 1...999 ~= denom2 else {
        fatalError("제한사항: 1과 999사이의 값이 아님")
    }
    
    var resultNumer: Int = 0
    var resultDenom: Int = 0
    
    resultNumer = numer1 * denom2 + numer2 * denom1
    resultDenom = denom1 * denom2
    
    var gcdA: Int = resultNumer
    var gcdB: Int = resultDenom
    
    // 뉴클리드 호제법 (최대공약수 찾기)
    while gcdB != 0 {
        let temp = gcdA % gcdB
        gcdA = gcdB
        gcdB = temp
    }
    
    return [resultNumer / gcdA, resultDenom / gcdA]
}