//
//  9291.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/29/25.
//

//  문제 링크: https://www.acmicpc.net/problem/9291
//  알고리즘 분류: 구현, 브루트포스 알고리즘

import Shared

public struct BOJ9291: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69112KB, 시간: 12ms, 코드 길이: 1078B
        let T = Int(readLine()!)!

        for test in 1...T {
            var isCorrect = true
            var col = Array(repeating: Set<Int>(), count: 9)
            var block = Array(repeating: Set<Int>(), count: 9)

            for row in 0..<9 {
                let input = readLine()!.split(separator: " ").map { Int($0)! }

                if Set(input).count != 9 {
                    isCorrect = false
                }

                for idx in 0..<9 {
                    col[idx].insert(input[idx])
                    var insertBlock = 0

                    if 3..<6 ~= row {
                        insertBlock = 3
                    } else if 6..<9 ~= row {
                        insertBlock = 6
                    }

                    if 3..<6 ~= idx {
                        insertBlock += 1
                    } else if 6..<9 ~= idx {
                        insertBlock += 2
                    }

                    block[insertBlock].insert(input[idx])
                }
            }

            for nums in col where nums.count != 9 {
                isCorrect = false
            }

            for nums in block where nums.count != 9 {
                isCorrect = false
            }

            if test != T {
                _ = readLine()
            }

            print("Case \(test): \(isCorrect ? "" : "IN")CORRECT")
        }
    }
}
