//
//  11048.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/13/23.
//

//  문제 링크: https://www.acmicpc.net/problem/11048
//  알고리즘 분류: 다이나믹 프로그래밍

import Shared

public struct BOJ11048: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 84856KB, 시간: 308ms, 코드 길이: 771B
    private func solution1() {
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var maze = Array(repeating: Array(repeating: 0, count: NM[1]), count: NM[0])

        for idx in 0..<NM[0] {
            maze[idx] = readLine()!.split(separator: " ").map { Int($0)! }
        }

        var dp = maze

        for row in 0..<NM[0] {
            for col in 0..<NM[1] {
                maze[row][col] = dp[row][col]

                if row != NM[0] - 1 && col != NM[1] - 1 {
                    dp[row+1][col+1] = max(maze[row][col] + maze[row+1][col+1], dp[row+1][col+1])
                }

                if row != NM[0] - 1 {
                    dp[row+1][col] = max(maze[row][col] + maze[row+1][col], dp[row+1][col])
                }

                if col != NM[1] - 1 {
                    dp[row][col+1] = max(maze[row][col] + maze[row][col+1], dp[row][col+1])
                }
            }
        }

        print(dp[NM[0]-1][NM[1]-1])
    }

    // 메모리: 77048KB, 시간: 224ms, 코드 길이: 623B
    private func solution2() {
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var maze = Array(repeating: Array(repeating: 0, count: NM[1]), count: NM[0])

        for idx in 0..<NM[0] {
            maze[idx] = readLine()!.split(separator: " ").map { Int($0)! }
        }

        for row in 0..<NM[0] {
            for col in 0..<NM[1] {
                if row == 0 && col == 0 {
                    continue
                } else if row == 0 {
                    maze[row][col] += maze[row][col-1]
                } else if col == 0 {
                    maze[row][col] += maze[row-1][col]
                } else {
                    maze[row][col] += max(maze[row-1][col], maze[row][col-1])
                }
            }
        }

        print(maze[NM[0]-1][NM[1]-1])
    }
}
