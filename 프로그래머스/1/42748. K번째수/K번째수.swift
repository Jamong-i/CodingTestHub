import Foundation

func solution(_ arrayInt: [Int], _ commands: [[Int]]) -> [Int] {
    var answer: [Int] = []
    
    for command in commands{
        var array: [Int] = arrayInt
        var slicedArray: [Int] = cuttingArray(array, command)
        var sortedArray: [Int] = selectionSort(slicedArray)
        answer.append(sortedArray[command[2] - 1])
    }
    
    return answer
}
    
func cuttingArray(_ array: [Int], _ command: [Int]) -> [Int] {
    var cuttedArray: [Int] = []
    
    let firstNum: Int = command[0] - 1
    let endNum: Int = command[1] - 1
    
    for i in firstNum...endNum {
        cuttedArray.append(array[i])
    }
    return cuttedArray
}
    
func selectionSort(_ array: [Int]) -> [Int] {
    var arraySort: [Int] = array
    
    for i in 0..<arraySort.count {
        var least: Int = i
        
        for j in i + 1..<arraySort.count{
            if arraySort[j] < arraySort[least] {
                least = j
            }
        }
        
        if least != i {
            let temp = arraySort[i]
            arraySort[i] = arraySort[least]
            arraySort[least] = temp
        }
    }
    
    return arraySort
}