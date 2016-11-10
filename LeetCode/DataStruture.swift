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

class BinaryTree: NSObject {
    
    func createBinaryTree(_ vals: [Int?]) -> TreeNode? {
        let tree: TreeNode = TreeNode((vals.first ?? 0)!)
        
        tree.left = createChildTree(vals: vals, len: vals.count, index: 1)
        tree.right = createChildTree(vals: vals, len: vals.count, index: 2)
        
        return tree
    }
    
    private func createChildTree(vals: [Int?], len: Int, index: Int) -> TreeNode? {
        if len <= index || vals[index] == nil {
            return nil
        }
        
        let tree = TreeNode(vals[index]!)
        
        tree.left = createChildTree(vals: vals, len: len, index: index * 2 + 1)
        tree.right = createChildTree(vals: vals, len: len, index: index * 2 + 2)
        
        return tree
    }
    
}
