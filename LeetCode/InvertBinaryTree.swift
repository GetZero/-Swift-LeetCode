//
//  InvertBinaryTree.swift
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

class InvertBinaryTree: NSObject {
    
//    Invert a binary tree.
//    
//          4
//       /    \
//      2      7
//     / \    / \
//    1   3  6   9
//
//    to
//
//          4
//       /    \
//      7      2
//     / \    / \
//    9   6  3   1
//
//    Trivia:
//    This problem was inspired by this original tweet by Max Howell:
//    Google: 90% of our engineers use the software you wrote (Homebrew), but you can’t invert a binary tree on a whiteboard so fuck off.
    
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else {
            return nil
        }
        
        invert(root)
        
        return root
    }
    
    private func invert(_ root: TreeNode?) {
        guard let root = root else {
            return
        }
        
        let original = root.left
        root.left = root.right
        root.right = original
        
        invert(root.left)
        invert(root.right)
    }
    
}
