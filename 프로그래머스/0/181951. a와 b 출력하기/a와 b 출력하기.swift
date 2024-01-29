import Foundation

// 제한사항을 포함한 출력함수 생성
func printNum(_ a: Int, _ b: Int){
    guard (-100_000...100_000).contains(a) && (-100_000...100_000).contains(b) else {
        fatalError("제한사항 : -100,000 이상 100,000 이하의 수를 받음")
    }
    
    print("a =" , a)
    print("b =" , b)
}

// 입력값 공백으로 분류
guard let inputNum = readLine()?.split(separator: " ").compactMap({ Int($0) }) else {
    fatalError("입력값 없음")
}

// 입력값 갯수 확인
guard inputNum.count == 2 else {
    fatalError("입력값이 두개가 아님")
}


printNum(inputNum[0], inputNum[1])