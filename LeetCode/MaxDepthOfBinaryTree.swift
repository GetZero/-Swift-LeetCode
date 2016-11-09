//
//  MaxDepthOfBinaryTree.swift
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

class MaxDepthOfBinaryTree: NSObject {
    
//    Given a binary tree, find its maximum depth.
//    
//    The maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.
    
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        
        return max(maxDepth(root.left), maxDepth(root.right)) + 1
    }
    
}
