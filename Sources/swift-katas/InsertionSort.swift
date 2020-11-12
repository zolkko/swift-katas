func insertionSortInPlace<T>(_ input: inout [T]) where T: Comparable {
    guard input.count > 2 else {
        return
    }

    for i in 1..<input.count {
        for j in (1...i).reversed() {
            if input[j] < input[j - 1] {
                input.swapAt(j, j - 1)
            } else {
                break // out of the inner loop
            }
        }
    }
}

func insertionSort<T>(_ input: [T]) -> [T] where T: Comparable {
    var value = input
    insertionSortInPlace(&value)
    return value
}
