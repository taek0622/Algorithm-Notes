//
//  2022-03.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/14.
//

// 2022년 3회 SHOW ME THE CODE 2023 01 14 14:00 ~ 17:00

import Foundation

import Shared

class SMTC2203: Solvable {
    func run() {
        C()
    }

    func A() {
        let N = Int(readLine()!)!
        let statues = readLine()!.split(separator: " ").map { Int(String($0))! }
        var knowledge = Set<Int>()

        for startIdx in 0..<N {
            var left = 0
            var right = 0

            for idx in startIdx..<N {
                if statues[idx] == 1 {
                    left += 1
                } else {
                    right += 1
                }

                knowledge.insert(abs(left - right))
            }
        }

        print(knowledge.max()!)
    }

    func B() {
        let size = readLine()!.split(separator: " ").map { Int(String($0))! }
        var area = [[Int]]()
        var count = 0

        for _ in 0..<size[0] {
            area.append(readLine()!.split(separator: " ").map { Int(String($0))! })
        }

        for row in 0..<size[0] {
            for column in 0..<size[1] {
                if area[row][column] == 0 {
                    count += 1
                    
                    if row == size[0] - 1 && column == size[1] - 1 && (area[row - 1][column] == 0 || area[row][column - 1] == 0 || area[0][column] == 0 || area[row][0] == 0) {
                        count -= 1
                    } else if row == size[0] - 1 && (area[0][column] == 0 || (column != 0 && area[row][column - 1] == 0)) {
                        count -= 1
                    } else if column == size[1] - 1 && (area[row][0] == 0 || (row != 0 && area[row - 1][column] == 0)) {
                        count -= 1
                    } else if row == 0 && column != 0 && area[row][column - 1] == 0 {
                        count -= 1
                    } else if column == 0 && row != 0 && area[row - 1][column] == 0 {
                        count -= 1
                    } else if row != 0 && column != 0 && (area[row][column - 1] == 0 || area[row - 1][column] == 0) {
                        count -= 1
                    }
                }
                print(row, column, count)
            }
        }

        print(count)
    }

    func C() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! } // N, M, 만족도
        var W = [[0]]
        var max = 0

        for _ in 0..<min(input[0], input[1]) {
            W.append(readLine()!.split(separator: " ").map { Int(String($0))! })
        }

        let lefts = readLine()!.split(separator: " ").map { Int(String($0))! }
        let rights = readLine()!.split(separator: " ").map { Int(String($0))! }

        for row in 0..<input[0] {
            for column in 0..<input[1] {
                if W[lefts[row]][rights[column]] > max {
                    max = W[lefts[row]][rights[column]]
                }
            }
        }

        print(max)
    }
}
