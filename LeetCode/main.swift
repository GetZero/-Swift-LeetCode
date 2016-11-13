//
//  main.swift
//  LeetCode
//
//  Created by 韦曲凌 on 2016/11/7.
//  Copyright © 2016年 Wake GetZero. All rights reserved.
//

import Foundation
import CoreAudioKit

func performanceTest(f: (_ count: Int) -> ()) {
    let startTime = CACurrentMediaTime()
    
    for i in 0 ..< 10 {
        f(i)
    }
    
    let endTime = CACurrentMediaTime()
    
    print("Average Running Time: " + "\((endTime - startTime) / 10 * 1000)" + " ms")
}

func test(_ count: Int) {
    if count == 0 {
        print("Result: " + ExcelSheetColumnTitle().convertToTitle(26))
    } else {
        _ = ExcelSheetColumnTitle().convertToTitle(26)
    }
}

performanceTest { (i) in
    test(i)
}
