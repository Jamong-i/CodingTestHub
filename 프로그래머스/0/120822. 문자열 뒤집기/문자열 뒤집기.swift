import Foundation

func solution(_ my_string:String) -> String {
    guard 1...1_000 ~= my_string.count else {
        fatalError("제한사항: 문자열 길이가 1과 1,000사이의 값이 아님")
    }
    
    var my_array: [Character] = []
    
    for i in my_string {
        my_array.append(i)
    }
    
    var reversedArray: String = ""
    
    for i in 1...my_array.count {
        reversedArray.append(my_array[my_array.count - i])
    }
    return reversedArray
}