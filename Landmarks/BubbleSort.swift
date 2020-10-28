public func bubbleSort<T: Comparable>(_ input: [T]) -> [T] {
    if input.count <= 1 {
        return input
    }

    var result = input
    var swapped = false

    for n in (1..<result.count).reversed() {
        swapped = false
        for i in 0..<n {
            if result[i] > result[i + 1] {
                (result[i], result[i + 1]) = (result[i + 1], result[i])
                swapped = true
            }
        }
        if !swapped {
            break
        }
    }

    return result
}
