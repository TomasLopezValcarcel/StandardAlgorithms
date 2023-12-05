//
//  main.swift
//  StandardAlgorithms
//
//  Created by Lopez-Valcarcel, Tomas (CDNP) on 07/11/2023.
//

import Foundation

func menu() {
//    print("Enter an array of numbers separated by commas - no spaces:")
//    
//    var numbers = [Int]()
//
//    if let input = readLine(){
//        let tempNumbers = input.split(separator: ",")
//        
//        for num in tempNumbers{
//            if let number = Int(num) {
//                numbers.append(number)
//            }
//            else{
//                print("Invalid input - not a number")
//                return
//            }
//        }
//    }
//    else {
//        print("Invalid input - not all numbers.")
//        return
//    }
        
    while true {
//        print("\nArray: \(numbers)")
        print("1. Bubble Sort")
        print("2. Merge Sort")
        print("3. Quick Sort")
        print("4. Insertion Sort")
        print("5. Binary Search")
        print("6. Linear Search")
//        print("7. Exit")
        print("Choice: ")
        
        if let choice = readLine(),
           let option = Int(choice) {
            
            switch option {
            case 1:
                print("Bubble Sort:\n\nDescription:\nSteps through array in order, comparing each item with the next and swapping as comparing, 'bubbling' the item up along the array\n\nBig O complexities:\nBest - O(n)\nAverage - O(n^2)\nWorst - O(n^2)")
            case 2:
                print("Merge Sort:\n\nDescription:\nDivides into subarrays down to one item each, then merges them while sorting to recreate a sorted list\n\nBig O complexities:\nBest - O(nlogn)\nAverage - O(nlogn)\nWorst - O(nlogn)")
            case 3:
                print("Quick Sort:\n\nDescription:\nUses a pivot and compares each item to the pivot, placing it on either side until the whole array is sortedn\nBig O complexities:\nBest - O(nlogn)\nAverage - O(nlogn)\nWorst - O(n^2)")
            case 4:
                print("Insertion Sort:\n\nDescription:\nTakes one item at a time and finds its' place in the sorted array, until all are sorted\n\nBig O complexities:\nBest - O(n)\nAverage - O(n^2)\nWorst - O(n^2)")
            case 5:
                print("Binary Search:\n\nDescription:\nDivides search scope by half repeatedly by comparing search term to see if it's in the bigger or smaller half until term is found\n\nPreconditions:\nArray must be sorted\n\nBig O complexities:\nBest - O(1)\nAverage - O(logn)\nWorst - O(logn)")
            case 6:
                print("Linear Search:\n\nDescription:\nSequentially checkes every item in array for search term\n\nBig O complexities:\nBest - O(1)\nAverage - O(n/2)\nWorst - O(n)")
            default:
                print("Invalid choice - enter a number between 1 and 6")
            }
        } else {
            print("Invalid input - enter a number")
        }
            
            
//            switch option {
//            case 1:
//                print("Bubble Sort: \(Sorting().bubbleSort(numbers))")
//            case 2:
//                print("Merge Sort: \(Sorting().mergeSort(numbers))")
//            case 3:
//                print("Quick Sort: \(Sorting().quickSort(numbers))")
//            case 4:
//                print("Insertion Sort: \(Sorting().insertionSort(numbers))")
//            case 5:
//                print("Binary Search - enter search term: ")
//                if let input = readLine(){
//                    let searchTerm = Int(input)
//                }
//                print("\nBinary Search for \(searchTerm)\(Searching().binarySearch(numbers, searchTerm))")
//            case 6:
//                print("Linear Search: \(Searching().linearSearch(numbers))")
//            default:
//                print("Invalid choice - enter a number between 1 and 6")
//            }
//        } else {
//            print("Invalid input - enter a number")
//        }
    }
}

while true{
    menu()
}
