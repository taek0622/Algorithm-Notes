//
//  10177.swift
//  BOJ10000To10999
//
//  Created by 김민택 on 2/23/26.
//

//  문제 링크: https://www.acmicpc.net/problem/10177
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ10177: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69112KB, 시간: 4ms, 코드 길이: 793B
        let n = Int(readLine()!)!

        for _ in 0..<n {
            let m = Int(readLine()!)!
            var square = Array(repeating: Array(repeating: 0, count: m), count: m)
            var sumSet = Set<Int>()

            for idx in 0..<m {
                square[idx] = readLine()!.split(separator: " ").map { Int($0)! }
                sumSet.insert(square[idx].reduce(0, +))
            }

            for col in 0..<m {
                var sum = 0

                for row in 0..<m {
                    sum += square[row][col]
                }

                sumSet.insert(sum)
            }

            var leftSideSum = 0
            var rightSideSum = 0

            for idx in 0..<m {
                leftSideSum += square[idx][idx]
                rightSideSum += square[idx][m-idx-1]
            }

            sumSet.insert(leftSideSum)
            sumSet.insert(rightSideSum)

            print(sumSet.count == 1 ? "Magic square of size \(m)" : "Not a magic square")
        }
    }
}
