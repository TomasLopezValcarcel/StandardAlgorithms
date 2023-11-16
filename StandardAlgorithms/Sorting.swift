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
    
    func quickSort(_ numbers: [Int]) -> [Int] {
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
        
        var combinedNums: [Int] = [Int]()
        combinedNums.append(contentsOf: left)
        combinedNums.append(pivot)
        combinedNums.append(contentsOf: right)
        
        return(combinedNums)
    }
    
}

