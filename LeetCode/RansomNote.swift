//
//  Solution.swift
//  LeetCode
//
//  Created by 韦曲凌 on 2016/11/7.
//  Copyright © 2016年 Wake GetZero. All rights reserved.
//

import Foundation

class RansomNote: NSObject {
    
    //  Given an arbitrary ransom note string and another string containing letters from all the magazines, write a function that will return true if the ransom note can be constructed from the magazines ; otherwise, it will return false.
    //
    //  Each letter in the magazine string can only be used once in your ransom note.
    //  Note:
    //  You may assume that both strings contain only lowercase letters.
    //
    //  canConstruct("a", "b") -> false
    //  canConstruct("aa", "ab") -> false
    //  canConstruct("aa", "aab") -> true
    
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        if ransomNote.characters.count == 0 {
            return true
        }
        
        if magazine.characters.count == 0 {
            return false
        }
        
        var map: [String: Int] = [:]
        
        for i in magazine.characters {
            let str: String = String(i)
            
            if let value = map[str] {
                map.updateValue(value + 1, forKey: str)
            } else {
                map.updateValue(1, forKey: str)
            }
        }
        
        for i in ransomNote.characters {
            let str: String = String(i)
            
            if let value = map[str] {
                map.updateValue(value - 1, forKey: str)
                if map[str]! < 0 {
                    return false
                }
            } else {
                return false
            }
        }
        
        return true
    }
    
}
