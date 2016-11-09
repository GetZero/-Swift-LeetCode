//
//  main.swift
//  LeetCode
//
//  Created by 韦曲凌 on 2016/11/7.
//  Copyright © 2016年 Wake GetZero. All rights reserved.
//

import Foundation
import CoreAudioKit

func performanceTest(f: () -> ()) {
    let startTime = CACurrentMediaTime()
    
    for _ in 0 ..< 10 {
        f()
    }
    
    let endTime = CACurrentMediaTime()
    
    print("Average Running Time: " + "\((endTime - startTime) / 10 * 1000)" + " ms")
}

performanceTest {
    print(ExcelSheetColumnNumber().titleToNumber("BA"))
}

