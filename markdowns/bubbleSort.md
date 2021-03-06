## What is Bubble Sort?

Bubble sort is a very basic sorting algorithm. It is used by starting at the beginning of an array and comparing the first couple elements. The elements are only swapped if the first element has a greater value than the second element. This process of comparing adjacent elements continues throughout the array until the end has been reached & iterates again from the 0th index until the array has been sorted. This sorting algorithm is never used outside of learning purposes as it is much to slow to be implemented in live code.

```
[3,4,5,1,0,8,1]
[3,4,1,5,0,8,1]
[3,4,1,0,5,8,1]
[3,4,1,0,5,1,8]
[3,1,4,0,5,1,8]
[3,1,0,4,5,1,8]
[3,1,0,4,1,5,8]
[1,3,0,4,1,5,8]
[1,0,3,4,1,5,8]
[1,0,3,1,4,5,8]
[0,1,3,1,4,5,8]
[0,1,1,3,4,5,8]
```

Best-Case Complexity: О(n) 
Worst-Case Complexity: О(n^2) 

[Psuedo Code:](http://www.algorithmist.com/index.php/Bubble_sort)

```swift
func bubblesort( var a as array )
    for i from 1 to N
        for j from 0 to N - 1
           if a[j] > a[j + 1]
              swap( a[j], a[j + 1] )
end func
```

![Bubble Sort](https://upload.wikimedia.org/wikipedia/commons/c/c8/Bubble-sort-example-300px.gif)


@[Add the code to sort the array using the Bubble Sort algorithm]({"stubs": ["bubbleSort/Sources/bubbleSort.swift"], "command": "/bin/bash bubbleSort.sh"})

::: Stuck? Check the solution here
```swift
    func bubbleSort(_ array: [Int]) -> [Int] {
        var arr = array 
        for _ in 0...arr.count {
            for value in 1...arr.count - 1 {
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
:::

