//
//  DataStruture.swift
//  LeetCode
//
//  Created by 韦曲凌 on 2016/11/8.
//  Copyright © 2016年 Wake GetZero. All rights reserved.
//

import Foundation

public class TreeNode {
    public var val:  Int
    public var left:  TreeNode?
    public var right: TreeNode?
    
    init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}
