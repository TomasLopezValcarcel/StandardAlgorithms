//
//  Sorting.swift
//  StandardAlgorithms
//
//  Created by Lopez-Valcarcel, Tomas (CDNP) on 10/11/2023.
//

import Foundation

class Sorting{
    func bubbleSort(_ numbers: [Int]) -> [Int] {
        var sorted = numbers
        for i in 0...sorted.count-2{
            for j in 0...sorted.count - i - 2{
                if sorted[j+1] < sorted[j] {
                    let tempJ = sorted[j]
                    sorted[j] = sorted[j+1]
                    sorted[j+1] = tempJ
                }
            }
        }
        
        return sorted
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
    
    func insertionSort(_ numbers: [Int]) -> [Int] {
        if numbers.count <= 1{
            return numbers
        }
        
        var sorted = numbers

        
        for i in 1...numbers.count-1{
            let currentNum = numbers[i]
            var num = i-1
            
            while num >= 0 && sorted[num] > currentNum{
                sorted[num + 1] = sorted[num]
                num -= 1
            }
            
            sorted[num+1] = currentNum
        }
        
        return sorted
    }

    
}

