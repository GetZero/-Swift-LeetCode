//
//  SortAlgorithm.swift
//  LeetCode
//
//  Created by 韦曲凌 on 2016/11/11.
//  Copyright © 2016年 Wake GetZero. All rights reserved.
//

import Foundation

class SortAlgorithm: NSObject {
    
    var newArr: [Int] = []
    
    func selectSort(numbers nums: [Int]) -> [Int] {
        var newNums: [Int] = nums
        
        for i in 0 ..< newNums.count - 1 {
            var count = newNums[i]
            var index = 0
            for j in i + 1 ..< newNums.count {
                if count > newNums[j] {
                    count = newNums[j]
                    index = j
                }
            }
            
            if index != 0 {
                newNums[index] = newNums[i]
                newNums[i] = count
            }
        }
        
        return newNums
    }
    
    func bubbleSort(numbers nums: [Int]) -> [Int] {
        var newNums: [Int] = nums
        
        for i in 0 ..< newNums.count {
            for j in i ..< newNums.count {
                if newNums[i] > newNums[j] {
                    let temp = newNums[i]
                    newNums[i] = newNums[j]
                    newNums[j] = temp
                }
            }
        }
        
        return newNums
    }
    
    func insertSort(numbers nums: [Int], orderBy: OrderBy) -> [Int] {
        var newNums: [Int] = nums
        
        if orderBy == OrderBy.Ascending {
            for i in 1 ..< newNums.count {
                let key = newNums[i]
                var j = i - 1
                
                while j >= 0 && newNums[j] > key {
                    newNums[j + 1] = newNums[j]
                    j -= 1
                }
                
                newNums[j + 1] = key
            }
        } else {
            for i in 1 ..< newNums.count {
                let key = newNums[i]
                var j = i - 1
                
                while j >= 0 && newNums[j] < key {
                    newNums[j + 1] = newNums[j]
                    j -= 1
                }
                newNums[j + 1] = key
            }
        }
        
        return newNums
    }
    
    func mergeSort(numbers nums: [Int]) -> [Int] {
        for num in nums {
            newArr.append(num)
        }
        mergeSortReady(numbers: newArr, start: 0, end: nums.count - 1)
        return newArr
    }
    
    private func mergeSortReady(numbers nums: [Int], start: Int, end: Int) {
        if start < end {
            let q = (start + end) / 2
            mergeSortReady(numbers: newArr, start: start, end: q)
            mergeSortReady(numbers: newArr, start: q + 1, end: end)
            merge(numbers: newArr, start: start, middle: q, end: end)
        }
    }
    
    private func merge(numbers nums: [Int], start: Int, middle: Int, end: Int) {
        let n1 = middle - start + 1
        let n2 = end - middle
        
        var arr1: [Int] = []
        var arr2: [Int] = []
        
        for i in 0 ..< n1 {
            arr1.append(newArr[start + i])
        }
        for i in 0 ..< n2 {
            arr2.append(newArr[middle + i + 1])
        }
        arr1.append(Int.max)
        arr2.append(Int.max)
        
        var left = 0
        var right = 0
        
        for i in start ... end {
            if arr1[left] >= arr2[right] {
                newArr[i] = arr2[right]
                right += 1
            } else {
                newArr[i] = arr1[left]
                left += 1
            }
        }
    }
    
}
