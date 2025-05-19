//
//  10469.swift
//  BOJ10000To10999
//
//  Created by 김민택 on 5/19/25.
//

//  문제 링크: https://www.acmicpc.net/problem/10469
//  알고리즘 분류: 구현

import Shared

public struct BOJ10469: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 4ms, 코드 길이: 1269B
        var board = Array(repeating: Array(repeating: false, count: 8), count: 8)
        var isValid = true
        var totalQueen = 0

        for row in 0..<8 {
            board[row] = readLine()!.map { $0 == "*" }

            totalQueen += board[row].filter { $0 }.count

            if board[row].filter { $0 }.count > 1 {
                isValid = false
            }
        }

        if totalQueen != 8 {
            isValid = false
        }

        for col in 0..<8 where isValid {
            var count = 0

            for row in 0..<8 where board[row][col] {
                count += 1
            }

            if count > 1 {
                isValid = false
            }
        }

        for row in 0..<7 where isValid {
            if row ==  0 {
                for col in 0..<7 where isValid {
                    if slashCount(row, col) > 1 || reverseSlashCount(row, col, 7-col) > 1 {
                        isValid = false
                    }
                }

                continue
            }

            if slashCount(row, 7) > 1 || reverseSlashCount(row, 0, 7) > 1 {
                isValid = false
            }
        }

        print("\(isValid ? "" : "in")valid")

        func slashCount(_ sr: Int, _ sc: Int) -> Int {
            var count = 0

            for row in sr...sc where board[row][sr+sc-row] {
                count += 1
            }

            return count
        }

        func reverseSlashCount(_ sr: Int, _ sc: Int, _ er: Int) -> Int {
            var count = 0

            for row in sr...er where board[row][row-sr+sc] {
                count += 1
            }

            return count
        }
    }
}
