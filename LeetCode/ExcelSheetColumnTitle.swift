//
//  ExcelSheetColumnTitle.swift
//  LeetCode
//
//  Created by 韦曲凌 on 2016/11/12.
//  Copyright © 2016年 Wake GetZero. All rights reserved.
//

import Foundation

class ExcelSheetColumnTitle: NSObject {
    
//    Given a positive integer, return its corresponding column title as appear in an Excel sheet.
//    
//    For example:
//    
//    1 -> A
//    2 -> B
//    3 -> C
//    ...
//    26 -> Z
//    27 -> AA
//    28 -> AB
    
    func convertToTitle(_ n: Int) -> String {
        var n = n
        var alphas: [String] = []
        var newAlphas: [String] = []
        
        
        for ch in "ABCDEFGHIJKLMNOPQRSTUVWXYZ".characters {
            alphas.append("\(ch)")
        }
        
        while n > 0 {
            newAlphas.insert(alphas[(n - 1) % 26], at: 0)
            n = (n - 1) / 26
        }
        
        return newAlphas.joined()
    }
    
}
