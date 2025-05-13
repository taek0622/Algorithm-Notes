//
//  2578.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/14/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2578
//  알고리즘 분류: 구현, 시뮬레이션

import Shared

public struct BOJ2578: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 1231B
        var board = Array(repeating: Array(repeating: 0, count: 5), count: 5)
        var location = Array(repeating: (0, 0), count: 26)
        var result = 0

        for row in 0..<5 {
            let numbers = readLine()!.split(separator: " ").map { Int($0)! }
            board[row] = numbers

            for idx in  numbers.indices {
                location[numbers[idx]] = (row, idx)
            }
        }

        outer: for row in 0..<5 {
            let numbers = readLine()!.split(separator: " ").map { Int($0)! }

            inner: for idx in numbers.indices {
                let (r, c) = location[numbers[idx]]
                board[r][c] = 0
                var count = 0

                for tr in 0..<5 where board[tr].reduce(0, +) == 0 {
                    count += 1
                }

                for col in 0..<5 {
                    var sum = 0

                    for tr in 0..<5 {
                        sum += board[tr][col]
                    }

                    if sum == 0 {
                        count += 1
                    }
                }

                if board[0][0] + board[1][1] + board[2][2] + board[3][3] + board[4][4] == 0 {
                    count += 1
                }

                if board[0][4] + board[1][3] + board[2][2] + board[3][1] + board[4][0] == 0 {
                    count += 1
                }

                if count >= 3 {
                    result = row * 5 + idx + 1
                    break outer
                }
            }
        }

        print(result)
    }
}
