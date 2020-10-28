import Foundation


public func bubbleSort<T: Comparable>(_ input: [T]) -> [T] {
    if input.count <= 1 {
        return input
    }
    
    var result = input
    var swapped = false
    var n = result.count - 1

    repeat {
        swapped = false
        for i in 0..<n {
            if result[i] > result[i + 1] {
                (result[i], result[i + 1]) = (result[i + 1], result[i])
                swapped = true
            }
        }
        n -= 1
    } while (swapped)

    return result
}
