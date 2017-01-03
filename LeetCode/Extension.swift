//
//  ArrayExtension.swift
//  LeetCode
//
//  Created by 韦曲凌 on 2017/1/3.
//  Copyright © 2017年 Wake GetZero. All rights reserved.
//

import Foundation

enum OrderBy {
    case Ascending, Descending
}

extension Array {
    
    func createOrderArray(lenght: Int, orderBy: OrderBy) -> [Int] {
        var arr: [Int] = []
        
        if orderBy == .Ascending {
            for i in 0 ... lenght {
                arr.append(i)
            }
        } else {
            for i in 0 ... lenght {
                arr.append(lenght - i)
            }
        }
        
        return arr
    }
    
    func createDisorderArray(lenght: Int, maxValue: UInt64) -> [Int] {
        var arr: [Int] = []
        for _ in 0 ..< lenght {
            arr.append(Int(UInt64().random(lower: 0, upper: maxValue)))
        }
        return arr
    }
    
    mutating func exchanged(firstIndex: Int, secondIndex: Int) {
        guard firstIndex >= 0 && firstIndex < self.count && secondIndex >= 0 && secondIndex < self.count else {
            return
        }
        let temp = self[firstIndex]
        self[firstIndex] = self[secondIndex]
        self[secondIndex] = temp
    }
    
}

extension UInt64 {
    
    func random(lower: UInt64 = min, upper: UInt64 = max) -> UInt64 {
        var m: UInt64
        let u = upper - lower
        var r = arc4random(type: UInt64())
        if u > UInt64(Int64.max) {
            m = 1 + ~u
        } else {
            m = ((.max - (u * 2)) + 1) % u
        }
        while r < m {
            r = arc4random(type: UInt64())
        }
        return (r % u) + lower
    }
    
    private func arc4random(type: UInt64) -> UInt64 {
        var r: UInt64 = 0
        arc4random_buf(&r, MemoryLayout<UInt64>.size)
        return r
    }
    
}
