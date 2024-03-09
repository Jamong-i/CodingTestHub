import Foundation

let str: String = readLine()!

guard 1...1_000_000 ~= str.count else {
    fatalError("제한사항: 1과 1,000,000사이의 문자열 길이가 아님")
}

print(str)