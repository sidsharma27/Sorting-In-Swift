## What is Insertion Sort?

Insertion Sort is a sorting algorithm that picks an element from the array (usually the first), takes it out of the index it is currently in, and 'inserts' it in the correct position within a 'sorted sublist'. The elements swap indexes if the first element has a greater value than the second element. If not, the iteration continues with the second element & third element to check if they are in ascending order, while the first element has become a part of the 'sorted sublist'.
This process of comparing adjacent elements continues throughout the array until the end has been reached.

```
[3,4,5,1,0,8,1]
[3]|[4,5,1,0,8,1]
[3,4]|[5,1,0,8,1]
[3,4,5]|[1,0,8,1]
[1,3,4,5]|[0,8,1]
[0,1,3,4,5]|[8,1]
[0,1,3,4,5,8]|[1]
[0,1,3,4,5,8,1]
```
Best-Case Complexity: О(n) 
Worst-Case Complexity: О(n^2) 

[Psuedo Code:](http://www.algorithmist.com/index.php/Insertion_sort)

```swift
for i from 1 to N
   key = a[i]
   j = i - 1
   while j >= 0 and a[j] > key
      a[j+1] = a[j]
      j = j - 1
   a[j+1] = key
```

![Insertion Sort](https://upload.wikimedia.org/wikipedia/commons/b/b1/Insertion-sort.svg)


@[Add the code to sort the array using the Insertion Sort algorithm]({"stubs": ["insertionSort/Sources/insertionSort.swift"], "command": "/bin/bash insertionSort.sh"})

::: Stuck? Check the solution here
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
:::
