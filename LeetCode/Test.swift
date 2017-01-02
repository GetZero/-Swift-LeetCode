//
//  Test.swift
//  LeetCode
//
//  Created by 韦曲凌 on 2016/11/27.
//  Copyright © 2016年 Wake GetZero. All rights reserved.
//

import Foundation
import CoreAudioKit

class Test: NSObject {
    
    func performanceTest<T>(times: Int, f: T) {
        let startTime = CACurrentMediaTime()
        
        for i in 0 ..< 10 {
            run(i, f: f)
        }
        
        let endTime = CACurrentMediaTime()
        
        print("Time: \(times)\nAverage Running Time: " + "\((endTime - startTime) / 10 * 1000)" + " ms")
    }
    
    private func run<T>(_ count: Int, f: T) {
        if count == 0 {
            print("Result: ", f)
        } else {
            _ = f
        }
    }
    
}
