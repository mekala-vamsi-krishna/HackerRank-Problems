//
//  main.swift
//  HackerRank Problems
//
//  Created by Mekala Vamsi Krishna on 6/28/25.
//

import Foundation


func simpleArraySum(ar: [Int]) -> Int {
    // Write your code here
    var array = ar
    var output = 0
    for i in array {
        output += i
    }
    return output
}

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var a = a
    var b = b
    
    var aScore = 0
    var bScore = 0
    
    var output: [Int] = []
    
    for i in 0...a.count - 1 {
        if a[i] > b[i] {
            aScore += 1
        } else if a[i] < b[i] {
            bScore += 1
        } else {
            aScore += 0
            bScore += 0
        }
    }
    
    output.append(aScore)
    output.append(bScore)
    return output
}

print(compareTriplets(a: [1,2,3], b: [3,2,1]))
print(compareTriplets(a: [17,28,30], b: [99,16,8]))


func diagonalDifference(arr: [[Int]]) -> Int {
    var _2DArray = arr
    
    var leftToRightDiagonalSum = 0
    var rightToLeftDiagonalSum = 0
    var n = _2DArray.count
    
    var AbsoluteDiff = 0
    
    for i in 0..._2DArray.count - 1 {
        leftToRightDiagonalSum = leftToRightDiagonalSum + _2DArray[i][i]
        rightToLeftDiagonalSum = rightToLeftDiagonalSum + _2DArray[i][n - i - 1]
    }
    
    print(leftToRightDiagonalSum)
    print(rightToLeftDiagonalSum)
    
    AbsoluteDiff = abs(leftToRightDiagonalSum - rightToLeftDiagonalSum)
    
    return AbsoluteDiff
}

print(diagonalDifference(arr: [
    [11,2,4],
    [4,5,6],
    [10,8,-12]
]))


var _2DArray = [[11, 2, 4], [4, 5, 6], [10, 8, -12]]

var left = 0
var right = 0

let n = _2DArray.count

for i in 0..._2DArray.count - 1 {
    left = left + _2DArray[i][i]
    right = right + _2DArray[i][n - i - 1]
}
print(left)
print(right)


