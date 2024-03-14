import Foundation

func solution(_ my_string: String, _ n: Int) -> String {
    guard 2...5 ~= my_string.count else {
        fatalError("제한사항: 2부터 5까지의 문자열 길이가 아님")
    }
    
    guard 2...10 ~= n else {
        fatalError("제한사항: 2부터 10까지의 정수가 아님")
    }
    
    // guard my_string.rangeOfCharacter(from: CharacterSet.uppercaseLetters.union(CharacterSet.lowercaseLetters.inverted)) == nil else {
    //     fatalError("제한사항: 영어 대소문자로만 이루어져 있어야 함")
    // }
    
    var result: String = ""
    
    for char in my_string {
        result += String(repeating: String(char), count: n)
    }
    
    return result
}