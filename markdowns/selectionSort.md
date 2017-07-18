## What is Selection Sort?

Selection Sort is a sorting algorithm that goes through an unsorted array, finds the lowest value, and stores it at the begining of the array (as a sorted sublist). It continues from the 2nd element onwards and once again finds the lowest value in the unsorted array to store as the 2nd element of the sorted sublist. This process continues until the array is sorted. Selection Sort is quite similar to the Insertion Sort algorithm we saw in the previous lesson.

```
[3,4,5,1,0,8,1]
[0]|[3,4,5,1,8,1]
[0,1]|[3,4,5,8,1]
[0,1,1]|[3,4,5,8]
[0,1,1,3]|[4,5,8]
[0,1,1,3,4]|[5,8]
[0,1,1,3,4],5|[8]
[0,1,1,3,4,5,8]
```

Best-Case Complexity: О(n^2) 
Worst-Case Complexity: О(n^2) 

[Psuedo Code](http://www.algorithmist.com/index.php/Selection_sort)

```swift
func selsrtI(lst)
    max = length(lst) - 1

    for i from 0 to max
        key = lst[i]
        keyj = i

        for j from i+1 to max
            if lst[j] < key
                key = lst[j]
                keyj = j

        lst[keyj] = lst[i]
        lst[i] = key

    return lst

end func
```

![Selection Sort](https://upload.wikimedia.org/wikipedia/commons/0/07/Udtag_sort_001.PNG)


@[Add the code to sort the array using the Insertion Sort algorithm]({"stubs": ["selectionSort/Sources/selectionSort.swift"], "command": "/bin/bash selectionSort.sh"})

::: Stuck? Check the solution here
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
:::