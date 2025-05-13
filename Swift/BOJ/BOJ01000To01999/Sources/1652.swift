//
//  1652.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 5/31/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1652
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ1652: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 978B
        let N = Int(readLine()!)!
        var room = Array(repeating: Array(repeating: false, count: N), count: N)
        var (countRow, countCol) = (0, 0)

        for row in 0..<N {
            room[row] = readLine()!.map { $0 == "." }
        }

        for row in 0..<N {
            var tempCount = 0

            for col in 0..<N {
                if room[row][col] {
                    tempCount += 1
                } else {
                    if tempCount >= 2 {
                        countRow += 1
                    }

                    tempCount = 0
                }

                if col == N - 1 {
                    if tempCount >= 2 {
                        countRow += 1
                    }
                }
            }
        }

        for col in 0..<N {
            var tempCount = 0

            for row in 0..<N {
                if room[row][col] {
                    tempCount += 1
                } else {
                    if tempCount >= 2 {
                        countCol += 1
                    }

                    tempCount = 0
                }

                if row == N - 1 {
                    if tempCount >= 2 {
                        countCol += 1
                    }
                }
            }
        }

        print("\(countRow) \(countCol)")
    }
}
