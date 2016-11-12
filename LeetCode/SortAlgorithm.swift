//
//  SortAlgorithm.swift
//  LeetCode
//
//  Created by 韦曲凌 on 2016/11/11.
//  Copyright © 2016年 Wake GetZero. All rights reserved.
//

import Foundation

class SortAlgorithm: NSObject {
    
    func selectSort(numbers nums: [Int]) -> [Int] {
        var newNums: [Int] = nums
        
        for i in 0 ..< newNums.count - 1 {
            var count = newNums[i]
            var index = 0
            for j in i + 1 ..< newNums.count {
                if count > newNums[j] {
                    count = newNums[j]
                    index = j
                }
            }
            
            if index != 0 {
                newNums[index] = newNums[i]
                newNums[i] = count
            }
        }
        
        return newNums
    }
    
    func bubbleSort(numbers nums: [Int]) -> [Int] {
        var newNums: [Int] = nums
        
        for i in 0 ..< newNums.count {
            for j in i ..< newNums.count {
                if newNums[i] > newNums[j] {
                    let temp = newNums[i]
                    newNums[i] = newNums[j]
                    newNums[j] = temp
                }
            }
        }
        
        return newNums
    }
    
}
