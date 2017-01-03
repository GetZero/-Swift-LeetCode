//
//  SearchAlgorithm.swift
//  LeetCode
//
//  Created by 韦曲凌 on 2017/1/1.
//  Copyright © 2017年 Wake GetZero. All rights reserved.
//

import Foundation

class SearchAlgorithm: NSObject {
    
    func linearSearch(source: [Int], target: Int) -> Int? {
        for num in source {
            if num == target {
                return num
            }
        }
        
        return nil
    }
    
    func binarySearch(source: [Int], target: Int) -> Int? {
        let sourceLenght = source.count
        let maxNum = source[sourceLenght - 1]
        
        var middleNum = (source.count - 1) / 2
        var lastMiddleNum = sourceLenght - 1
        
        while source[middleNum] >= 0 && source[middleNum] < maxNum {
            if target > source[middleNum] {
                middleNum = (middleNum + lastMiddleNum) / 2
            } else if target < source[middleNum] {
                lastMiddleNum = middleNum
                middleNum = middleNum / 2
            } else {
                return source[middleNum]
            }
        }
        
        return nil
    }
    
}
