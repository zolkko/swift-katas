import Foundation


public func bubbleSort(_ value: [Int]) -> [Int] {
    if value.count <= 1 {
        return value
    }
    
    var input = value
    var swapped = false
    var n = input.count - 1

    repeat {
        swapped = false
        for i in 0..<n {
            if input[i] > input[i + 1] {
                (input[i], input[i + 1]) = (input[i + 1], input[i])
                swapped = true
            }
        }
        n -= 1
    } while (swapped)

    return input
}
