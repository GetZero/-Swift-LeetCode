//
//  SumOfLeftLeaves.swift
//  LeetCode
//
//  Created by 韦曲凌 on 2016/11/8.
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

class SumOfLeftLeaves: NSObject {
    
//    Find the sum of all left leaves in a given binary tree.
//
//    Example:
//    
//        3
//       / \
//      9  20
//         / \
//        15  7
//    
//    There are two left leaves in the binary tree, with values 9 and 15 respectively. Return 24.
    
    private var sum = 0
    
    func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        
        getLeftLeaves(root)
        
        return sum
    }
    
    private func getLeftLeaves(_ root: TreeNode?) {
        guard let root = root else {
            return
        }
        
        if root.left != nil {
            if root.left?.left == nil && root.left?.right == nil {
                sum += (root.left?.val)!
            }
        }
        
        getLeftLeaves(root.left)
        getLeftLeaves(root.right)
    }
    
}
