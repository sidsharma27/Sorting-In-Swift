## Bubble Sort:

```swift
func bubbleSort(array: [Int]) -> [Int] {
    var arr = array 
    for _ in 0...arr.count {
        for value in 1...arrayCount-1 {
            if arr[value-1] > arr[value] {
                let largerValue = arr[value-1]
                arr[value-1] = arr[value]
                arr[value] = largerValue
            }
        }
    }
    print("Sorted\(arr)")
    return arr
}
```

## Insertion Sort:

```swift
func insertionSort(array: [Int]) -> [Int] {
    var arr = array
    for x in 1..<arr.count {
        var y = x
        while y > 0 && arr[y] < arr[y - 1] {
            swap(&arr[y - 1], &arr[y])
            y -= 1
        }
    }
    return arr
}
```

## Selection Sort: 

```swift
func selectionSort(array array: [Int]) - > [Int] {
    guard array.count > 1 else { return array } 
    var arr = array
    for x in 0.. < arr.count - 1 { 
        var lowest = x
        for y in x + 1.. < arr.count { 
            if arr[y] < arr[lowest] {
                lowest = y
            }
        }
        if x != lowest {
            swap( & arr[x], & arr[lowest])
        }
    }
    return a
}
```