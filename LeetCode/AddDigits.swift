//
//  AddDigits.swift
//  LeetCode
//
//  Created by 韦曲凌 on 2016/11/8.
//  Copyright © 2016年 Wake GetZero. All rights reserved.
//

import Foundation

//    Analysis:
//    in  out  in  out
//    0   0    10  1
//    1   1    11  2
//    2   2    12  3
//    3   3    13  4
//    4   4    14  5
//    5   5    15  6
//    6   6    16  7
//    7   7    17  8
//    8   8    18  9
//    9   9    19  1
//    result: out = (in - 1) % 9 + 1

class AddDigits: NSObject {
    
//    Given a non-negative integer num, repeatedly add all its digits until the result has only one digit.
//    
//    For example:
//    
//    Given num = 38, the process is like: 3 + 8 = 11, 1 + 1 = 2. Since 2 has only one digit, return it.
//    
//    Follow up:
//    Could you do it without any loop/recursion in O(1) runtime?
    
    func addDigits(_ num: Int) -> Int {
        if num < 10 {
            return num
        }
        
        return (num - 1) % 9 + 1
    }
}
