## What is Merge Sort?

Merge Sort is a sorting algorithm that divides the array into two parts, right down the middle. What about odd numbered arrays? ```[3,4,5,1,0,8,1]``` The array would get split after the 4th element and create two sublists. This process would be repeated till there is one single element in a few (7 to be exact in this situation) different 'sorted' sublists. One by one, the elements are compared and merged into a sorted array. 

```
[3,4,5,1,0,8,1]
[3,4,5,1] [0,8,1]
[3,4] [5,1] [0,8] [1]
[3][4][5][1][0][8][1]
[3,4][5,1][0,8][1]
[3,4][1,5][0,8][1]
[1,3,4,5] [0,1,8]
[0,1,1,3,4,5,8]
```

Best-Case Complexity: O(n log(n))
Worst-Case Complexity: O(n log(n)) 

[Psuedo Code:](http://www.algorithmist.com/index.php/Merge_sort)

```swift
func mergesort( var a as array )
     if ( n == 1 ) return a

     var l1 as array = a[0] ... a[n/2]
     var l2 as array = a[n/2+1] ... a[n]

     l1 = mergesort( l1 )
     l2 = mergesort( l2 )

     return merge( l1, l2 )
end func

func merge( var a as array, var b as array )
     var c as array

     while ( a and b have elements )
          if ( a[0] > b[0] )
               add b[0] to the end of c
               remove b[0] from b
          else
               add a[0] to the end of c
               remove a[0] from a
     while ( a has elements )
          add a[0] to the end of c
          remove a[0] from a
     while ( b has elements )
          add b[0] to the end of c
          remove b[0] from b
     return c
end func
```

![Merge Sort](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Merge_sort_algorithm_diagram.svg/1064px-Merge_sort_algorithm_diagram.svg.png)


@[Add the code to sort the array using the Merge Sort algorithm]({"stubs": ["mergeSort/Sources/mergeSort.swift"], "command": "/bin/bash mergeSort.sh"})

::: Stuck? Check the solution here
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
:::