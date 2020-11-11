func selectionSortInPlace<T: Comparable>(_ input: inout [T]) {
    guard input.count > 2 else {
        return;
    }

    for n in (1..<input.count).reversed() {
        var pos = 0

        for j in 0..<n {
            if input[j] > input[pos] {
                pos = j
            }
        }

        if input[pos] > input[n] {
            input.swapAt(pos, n)
        }
    }
}

func selectionSort<T: Comparable>(_ input: [T]) -> [T] {
    var copy = input
    selectionSortInPlace(&copy)
    return copy
}
