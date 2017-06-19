## Bubble Sort:

```swift
    func bubbleSort(_ array: [Int]) -> [Int] {
        var arr = array 
        for _ in 0...arr.count {
            for value in 1...arr.count-1 {
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
func insertionSort(_ array: [Int]) -> [Int] {
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
func selectionSort(_ array: [Int]) -> [Int] {
    guard array.count > 1 else { return array }  

    var arr = array                    

    for x in 0 ..< arr.count - 1 {  
        var lowest = x
        for y in x + 1 ..< arr.count {
            if arr[y] < arr[lowest] {
                lowest = y
            }
        }
        if x != lowest {
            swap(&arr[x], &arr[lowest])
        }
    }
    return arr
}
```

## Merge Sort: 
```swift
func merge(arr1: [Int], arr2: [Int]) -> [Int] {
    var arr1Index = 0
    var arr2Index = 0
        
    var sortedSublist = [Int]()
    
    while arr1Index < arr1.count && arr2Index < arr2.count {
        if arr1[arr1Index] < arr2[arr2Index] { 
            sortedArray.append(arr1[arr1Index])
            arr1Index += 1
        } else if arr1[arr1Index] > arr2[arr2Index] {
            sortedArray.append(arr2[arr2Index])
            arr2Index += 1
        } else {
            sortedArray.append(arr1[arr1Index])
            arr1Index += 1
            sortedArray.append(arr2[arr2Index])
            arr2Index += 1
            
        }
    }

    while arr1Index < arr1.count {
        sortedArray.append(arr1[arr1Index])
        arr1Index += 1
    }
    while arr2Index < arr2.count {
        sortedArray.append(arr2[arr2Index])
        arr2Index += 1
    }
    
    return sortedArray
}


func mergeSort(_ array: [Int]) -> [Int] {
    guard array.count > 1 else { return array }
    
    let cutIndex = array.count / 2
    
    let arr1 = mergeSort(Array(array[0..<cutIndex]))
    let arr2 = mergeSort(Array(array[cutIndex..<array.count]))
    
    return merge(arr1: arr1, arr2: arr2)
}
```