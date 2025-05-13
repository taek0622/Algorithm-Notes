//
//  1780.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/8/23.
//

//  문제 링크: https://www.acmicpc.net/problem/1780
//  알고리즘 분류: 분할 정복, 재귀

import Shared

public struct BOJ1780: Solvable {
    public init() {}

    public func run() {
        // 메모리: 106864KB, 시간: 1296ms, 코드 길이: 1051B
        let N = Int(readLine()!)!
        var paper = [[Int]]()

        for _ in 0..<N {
            paper.append(readLine()!.split(separator: " ").map { Int(String($0))! })
        }

        let count = countPaper(0, 0, N)
        print("\(count.0)\n\(count.1)\n\(count.2)")

        func countPaper(_ rStart: Int, _ cStart: Int, _ N: Int) -> (Int, Int, Int) {
            var result = (0, 0, 0)

            if N == 1 {
                switch paper[rStart][cStart] {
                case 0:
                    result.1 += 1
                case 1:
                    result.2 += 1
                default:
                    result.0 += 1
                }

                return result
            }

            let nextN = N/3

            for rIdx in 0..<3 {
                for cIdx in 0..<3 {
                    let piece = countPaper(rStart+nextN*rIdx, cStart+nextN*cIdx, nextN)
                    result.0 += piece.0
                    result.1 += piece.1
                    result.2 += piece.2
                }
            }

            if result.1 == 0 && result.2 == 0 {
                result.0 = 1
            } else if result.0 == 0 && result.2 == 0 {
                result.1 = 1
            } else if result.0 == 0 && result.1 == 0 {
                result.2 = 1
            }

            return result
        }
    }
}
