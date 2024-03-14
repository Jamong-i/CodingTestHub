import Foundation

func solution(_ my_string: String, _ n: Int) -> String {
    guard 2...5 ~= my_string.count else {
        fatalError("제한사항: 2부터 5까지의 문자열 길이가 아님")
    }
    
    guard 2...10 ~= n else {
        fatalError("제한사항: 2부터 10까지의 정수가 아님")
    }
    
    var result: String = ""
    
    for char in my_string {
        result += String(repeating: String(char), count: n)
    }
    
    return result 
}