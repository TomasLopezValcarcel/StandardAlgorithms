//
//  Searching.swift
//  StandardAlgorithms
//
//  Created by Tomas Lopez-Valcarcel on 17/11/2023.
//

import Foundation

class Searching{

    func linearSearch(_ numbers: [Int], searchTerm: Int) -> Int {
        for i in 0...numbers.count-1{
            if numbers[i] == searchTerm{
                return i
            }
        }
        return -1 //(not found)
    }
    
    func binarySearch(_ numbers: [Int], searchTerm: Int) -> Int {
        var rangeStart = 0
        var rangeEnd = numbers.count-1
        
        while rangeStart <= rangeEnd{
            let median = (rangeStart+rangeEnd)/2
            let medianNum = numbers[median]
            
            if medianNum == searchTerm{
                return median
            }
            else if medianNum < searchTerm{
                rangeStart = median + 1
            }
            else if medianNum < searchTerm{
                rangeEnd = median - 1
            }
        }
        
        return -1 //(not found)
    }

}


