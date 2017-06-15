## What is Selection Sort?

Selection Sort is a sorting algorithm that goes through an unsorted array, finds the lowest value, and stores it at the begining of the array (as a sorted sublist). It continues from the 2nd element onwards and once again finds the lowest value in the unsorted array to store as the 2nd element of the sorted sublist. This process continues until the array is sorted. Selection Sort is quite similar to the Insertion Sort algorithm we saw in the previous lesson.

Best-Case Complexity: О(n^2) 
Worst-Case Complexity: О(n^2) 

For example:
![Selection Sort](https://en.wikipedia.org/wiki/File:Selection-Sort-Animation.gif)


@[Add the code to sort the array using the Insertion Sort algorithm]({"stubs": ["selectionSort/Sources/selectionSort.swift"], "command": "/bin/bash selectionSort.sh"})
