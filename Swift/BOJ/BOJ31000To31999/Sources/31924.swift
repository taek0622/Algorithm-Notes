//
//  31924.swift
//  BOJ31000To31999
//
//  Created by 김민택 on 5/16/25.
//

//  문제 링크: https://www.acmicpc.net/problem/31924
//  알고리즘 분류: 구현, 브루트포스 알고리즘

import Shared

public struct BOJ31924: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69240KB, 시간: 8ms, 코드 길이: 1801B
        let N = Int(readLine()!)!
        var board = Array(repeating: Array(repeating: "", count: N), count: N)
        var count = 0
        let target = ("O", "B", "I", "S")

        for row in 0..<N {
            board[row] = readLine()!.map { String($0) }
        }

        if N >= 5 {
            for row in 0..<N {
                for col in 0..<N where board[row][col] == "M" {
                    if 0...N-5 ~= row {
                        if 0...N-5 ~= col && (board[row+1][col+1], board[row+2][col+2], board[row+3][col+3], board[row+4][col+4]) == target {
                            count += 1
                        }

                        if 4..<N ~= col && (board[row+1][col-1], board[row+2][col-2], board[row+3][col-3], board[row+4][col-4]) == target {
                            count += 1
                        }

                        if (board[row+1][col], board[row+2][col], board[row+3][col], board[row+4][col]) == target {
                            count += 1
                        }
                    }

                    if 4..<N ~= row {
                        if 0...N-5 ~= col && (board[row-1][col+1], board[row-2][col+2], board[row-3][col+3], board[row-4][col+4]) == target {
                            count += 1
                        }

                        if 4..<N ~= col && (board[row-1][col-1], board[row-2][col-2], board[row-3][col-3], board[row-4][col-4]) == target {
                            count += 1
                        }

                        if (board[row-1][col], board[row-2][col], board[row-3][col], board[row-4][col]) == target {
                            count += 1
                        }
                    }

                    if 0...N-5 ~= col && (board[row][col+1], board[row][col+2], board[row][col+3], board[row][col+4]) == target {
                        count += 1
                    }

                    if 4..<N ~= col && (board[row][col-1], board[row][col-2], board[row][col-3], board[row][col-4]) == target {
                        count += 1
                    }
                }
            }
        }

        print(count)
    }
}
