//
//  SameTree.swift
//  LeetCode
//
//  Created by 韦曲凌 on 2016/11/9.
//  Copyright © 2016年 Wake GetZero. All rights reserved.
//

import Foundation

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class SameTree: NSObject {
    
//    Given two binary trees, write a function to check if they are equal or not.
//    
//    Two binary trees are considered equal if they are structurally identical and the nodes have the same value.
    
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        guard p != nil else {
            return q == nil
        }
        
        if q == nil {
            return false
        }
        
        return (p?.val == q?.val) && (isSameTree(p?.left, q?.left)) && (isSameTree(p?.right, q?.right))
    }
    
}
