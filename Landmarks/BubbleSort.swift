import Foundation


public func bubbleSort(_ value: [Int]) -> [Int] {
    if value.count <= 1 {
        return value
    }
    
    var input = value
    var swapped = false

    repeat {
        swapped = false
        for i in 0..<(input.count - 1) {
            if input[i] > input[i + 1] {
                (input[i], input[i + 1]) = (input[i + 1], input[i])
                swapped = true
            }
        }
    } while (swapped)

    return input
}
