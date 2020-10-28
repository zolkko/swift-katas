public func bubbleSortInPlace<T: Comparable>(_ input: inout [T]) {
    if input.count <= 1 {
        return
    }
    for n in (1..<input.count).reversed() {
        var swapped = false
        for i in 0..<n {
            if input[i] > input[i + 1] {
                (input[i], input[i + 1]) = (input[i + 1], input[i])
                swapped = true
            }
        }
        if !swapped {
            break
        }
    }
}

public func bubbleSort<T: Comparable>(_ input: [T]) -> [T] {
    if input.count <= 1 {
        return input
    }
    var result = input
    bubbleSortInPlace(&result)
    return result
}
