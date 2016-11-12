//
//  ReverseInteger.swift
//  LeetCode
//
//  Created by 韦曲凌 on 2016/11/12.
//  Copyright © 2016年 Wake GetZero. All rights reserved.
//

import Foundation

class ReverseInteger: NSObject {
    
    func reverse(_ x: Int) -> Int {
        let newX: Int = x > 0 ? x : -x
        let isBiggerThanZero: Bool = x > 0 ? true : false
        
        let xString: String = "\(newX)"
        var yString: String = ""
        
        for i in xString.characters {
            yString = "\(i)" + yString
        }
        
        return isBiggerThanZero ? Int(yString)! : -Int(yString)!
    }
    
}
