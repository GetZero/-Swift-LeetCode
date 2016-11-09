//
//  FirstUniqueCharacterInaString.swift
//  LeetCode
//
//  Created by 韦曲凌 on 2016/11/7.
//  Copyright © 2016年 Wake GetZero. All rights reserved.
//

import Foundation

class FirstUniqueCharacterInAString: NSObject {
    
//    Given a string, find the first non-repeating character in it and return it's index. If it doesn't exist, return -1.
//    
//    Examples:
//    
//    s = "leetcode"
//    return 0.
//    
//    s = "loveleetcode",
//    return 2.
//    Note: You may assume the string contain only lowercase letters.
    
    func firstUniqChar(_ s: String) -> Int {
        var map: [String: Int] = [:]
        var count = 0
        var record: [String: Int] = [:]
        var minRecord = s.characters.count + 1
        
        for ch in s.characters {
            count += 1
            
            let str = "\(ch)"
            
            if let value = map[str] {
                map.updateValue(value + 1, forKey: str)
            } else {
                map.updateValue(1, forKey: str)
                record.updateValue(count, forKey: str)
            }
        }
        
        for key in map.keys {
            if let value = map[key] {
                if value == 1 {
                    minRecord = record[key]! > minRecord ? minRecord : record[key]!
                }
            }
        }
        
        return minRecord == s.characters.count + 1 ? -1 : minRecord - 1
    }
    
}
