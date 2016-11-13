//
//  SingleNumberIII.swift
//  LeetCode
//
//  Created by 韦曲凌 on 2016/11/13.
//  Copyright © 2016年 Wake GetZero. All rights reserved.
//

import Foundation

class SingleNumberIII: NSObject {
    
//    Given an array of numbers nums, in which exactly two elements appear only once and all the other elements appear exactly twice. Find the two elements that appear only once.
//    
//    For example:
//    
//    Given nums = [1, 2, 1, 3, 2, 5], return [3, 5].
//    
//    Note:
//    The order of the result is not important. So in the above example, [5, 3] is also correct.
//    Your algorithm should run in linear runtime complexity. Could you implement it using only constant space complexity?
    
    func singleNumber(_ nums: [Int]) -> [Int] {
        var statistics: [String: Int] = [:]
        var returnNums: [Int] = []
        
        for num in nums {
            let numStr = "\(num)"
            if let value = statistics[numStr] {
                statistics.updateValue(value + 1, forKey: numStr)
            } else {
                statistics.updateValue(1, forKey: numStr)
            }
        }
        
        for key in statistics.keys {
            if let value = statistics[key] {
                if value == 1 {
                    returnNums.append(Int(key)!)
                }
            }
        }
        
        return returnNums
    }
    
}
