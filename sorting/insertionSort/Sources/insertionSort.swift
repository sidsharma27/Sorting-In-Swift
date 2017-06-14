struct insertionSort {
    func insertionSort(_ array: [Int]) -> [Int] {
        var a = array
        for x in 1..<a.count {
            var y = x
            while y > 0 && a[y] < a[y - 1] {
                swap(&a[y - 1], &a[y])
                y -= 1
            }
        }
        return a
    }
}


