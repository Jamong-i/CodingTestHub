import Foundation

guard let input = readLine()?.split(separator: " ").compactMap({ Int($0) }), input.count == 2 else {
    fatalError("잘못된 입력")
}

print("a = \(input[0])")
print("b = \(input[1])")