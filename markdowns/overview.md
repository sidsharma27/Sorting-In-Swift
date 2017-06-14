# Sorting in Swift

This course helps you get started with sorting algorithms in Swift.

* Bubble Sort
* Insertion Sort
* Selection Sort
* Merge Sort

## <strong>What is Big-O notation?</strong>

Big-O notation is a way to tell how well an algorithm scales as the # of elements increase. In other words, how efficient the algorithm is as the data scales. When you are measuring the performance of a sorting algorithm, you compare the worst-case scenario (the longest amount of time the method can take to sort an array).

![Big-O Notation](https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Comparison_computational_complexity.svg/2000px-Comparison_computational_complexity.svg.png)

## <strong>Complexities</strong>

##### O(n!)
Factorial Complexity - 
Example: Say a sorting algorithm has a factorial complexity. If there are 10 elements in the array, it will take 3628800 steps (10! or 10 * 9 * 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1) to sort the array. 

#### O(2^n)
Exponential Complexity - 
Example: Say a sorting algorithm has a exponential complexity. If there are 10 elements in the array, it will take 1024 steps (2^10) to sort the array. 

#### O(n^2)
Quadratic Complexity
Example: Say a sorting algorithm has a quadratic complexity. If there are 10 elements in the array, it will take 100 steps (10^2) to sort the array. 

#### O(n log<sub>2</sub>n)
Linearithmic Complexity
Example: Say a sorting algorithm has a linearithmic complexity. If there are 10 elements in the array, it will take ~33-34 steps (10 * (log<sub>2</sub>10)) to sort the array. 

#### O(n)
Linear Complexity
Example: Say a sorting algorithm has a linear complexity. If there are 10 elements in the array, it will take 10 steps to sort the array. Linear complexities takes as many steps as the number of elements.


#### O(log<sub>2</sub>n)
Logarithmic Complexity
Example: Say a sorting algorithm has a logarithmic complexity. If there are 10 elements in the array, it will take ~3-4 steps (log<sub>2</sub>10) to sort the array. 
