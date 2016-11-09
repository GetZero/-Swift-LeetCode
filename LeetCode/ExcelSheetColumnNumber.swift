//
//  xcelSheetColumnNumber.swift
//  LeetCode
//
//  Created by 韦曲凌 on 2016/11/9.
//  Copyright © 2016年 Wake GetZero. All rights reserved.
//

import Foundation

class ExcelSheetColumnNumber: NSObject {
    
    func titleToNumber(_ s: String) -> Int {
        var alphasInt: [String: Int] = [:]
        var count = 0
        var sum: Int = 0
        
        for ch in "ABCDEFGHIJKLMNOPQRSTUVWXYZ".characters {
            count += 1
            alphasInt.updateValue(count, forKey: "\(ch)")
        }
        
        count = s.characters.count
        
        for ch in s.characters {
            let str = "\(ch)"
            
            count -= 1
            
            if count >= 1 {
                sum += alphasInt[str]! * Int(pow(26, Double(count)))
            } else {
                sum += alphasInt[str]!
            }
        }
        
        return sum
    }
    
}
