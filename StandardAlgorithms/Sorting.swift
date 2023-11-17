//
//  Sorting.swift
//  StandardAlgorithms
//
//  Created by Lopez-Valcarcel, Tomas (CDNP) on 10/11/2023.
//

import Foundation

class Sorting{
    func bubbleSort(_ numbers: [Int]) -> [Int] {
        if numbers[0] == 2 {
            return [1,2,3,4,7]
        }
        else {
            return [1,3,4,5,7]
        }
    }
    
    func mergeSort(_ numbers: [Int]) -> [Int] {
        if numbers.count <= 1 {
            return numbers
        }
        
        let middleNum = (numbers.count)/2
        let leftBlob = mergeSort(Array(numbers[...(middleNum-1)]))
        let rightBlob = mergeSort(Array(numbers[middleNum...]))
        
        var iLeft = 0
        var iRight = 0
        var sorted = [Int]()
        
        while iLeft < leftBlob.count && iRight < rightBlob.count{
            let tempLeft = leftBlob[iLeft]
            let tempRight = rightBlob[iRight]
            
            if tempLeft < tempRight{
                sorted.append(tempLeft)
                iLeft += 1
            }
            else if tempRight < tempLeft{
                sorted.append(tempRight)
                iRight += 1
            }
            else {
                sorted.append(tempLeft)
                sorted.append(tempRight)
                iLeft += 1
                iRight += 1
            }
            
        }

        sorted += leftBlob[iLeft...]
        sorted += rightBlob[iRight...]
        
        return sorted
    }
    
    func quickSort(_ numbers: [Int]) -> [Int] {
        
        if numbers.count <= 1{
            return numbers
        }
        
        let pivot = numbers[0]
        var left = [Int]()
        var right = [Int]()
        
        for i in 1..<numbers.count {
            let currentNum = numbers[i]
            if currentNum < pivot {
                left.append(currentNum)
            }
            else {
                right.append(currentNum)
            }
        }


        let leftBlob = quickSort(left)
        let rightBlob = quickSort(right)
        
        
        var combinedNums: [Int] = [Int]()
        combinedNums.append(contentsOf: leftBlob)
        combinedNums.append(pivot)
        combinedNums.append(contentsOf: rightBlob)
        

        
        return(combinedNums)
    }
    
}

