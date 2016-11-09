//
//  SingleNumber.swift
//  LeetCode
//
//  Created by 韦曲凌 on 2016/11/8.
//  Copyright © 2016年 Wake GetZero. All rights reserved.
//

import Foundation

class SingleNumber: NSObject {
    
    func singleNumber(_ nums: [Int]) -> Int {
        var map: [String: Int] = [:]
        
        for num in nums {
            let numStr = "\(num)"
            if let value = map[numStr] {
                map.updateValue(value + 1, forKey: numStr)
            } else {
                map.updateValue(1, forKey: numStr)
            }
        }
        
        for key in map.keys {
            if let value = map[key] {
                if value == 1 {
                    return Int(key)!
                }
            }
        }
        
        return 0
    }
    
}
