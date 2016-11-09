//
//  FizzBuzz.swift
//  LeetCode
//
//  Created by 韦曲凌 on 2016/11/7.
//  Copyright © 2016年 Wake GetZero. All rights reserved.
//

import Foundation

class FizzBuzz: NSObject {
    
//    Write a program that outputs the string representation of numbers from 1 to n.
//    
//    But for multiples of three it should output “Fizz” instead of the number and for the multiples of five output “Buzz”. For numbers which are multiples of both three and five output “FizzBuzz”.
//    
//    Example:
//    
//    n = 15,
//    
//    Return:
//    [
//    "1",
//    "2",
//    "Fizz",
//    "4",
//    "Buzz",
//    "Fizz",
//    "7",
//    "8",
//    "Fizz",
//    "Buzz",
//    "11",
//    "Fizz",
//    "13",
//    "14",
//    "FizzBuzz"
//    ]

    func fizzBuzz(_ n: Int) -> [String] {
        var fzBz: [String] = []
        
        for i in 1 ... n {
            if i % 3 != 0 && i % 5 != 0 {
                fzBz.append("\(i)")
                continue
            }
            
            if i % 3 == 0 && i % 5 == 0 {
                fzBz.append("FizzBuzz")
            } else if i % 5 == 0 {
                fzBz.append("Buzz")
            } else {
                fzBz.append("Fizz")
            }
        }
        
        return fzBz
    }
    
}
