import Foundation

// 제한사항을 포함한 문자출력 함수 생성
func printString(_ str: String) {
    guard (1...1_000_000).contains(str.count) else {
        fatalError("제한사항1 : 1 이상 1,000,000 이하의 문자열 갯수를 받음")
    }
    
    guard !str.contains(" ") else {
        fatalError("제한사항2 : 공백을 포함할 수 없음")
    }
    
    print(str)
}

// 문자입력 확인
guard let inputString = readLine() else {
    fatalError("입력이 없음")
}

// 문제 실행
printString(inputString)