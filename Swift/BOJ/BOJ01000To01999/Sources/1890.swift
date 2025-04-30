//
//  1890.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/3/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1890
//  알고리즘 분류: 다이나믹 프로그래밍

class BOJ1890: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 568B
        let N = Int(readLine()!)!
        var board = Array(repeating: Array(repeating: 0, count: N), count: N)
        var dp = board
        dp[0][0] = 1

        for idx in 0..<N {
            board[idx] = readLine()!.split(separator: " ").map { Int(String($0))! }
        }

        for row in 0..<N {
            for col in 0..<N where board[row][col] != 0 && dp[row][col] != 0 {
                let next = board[row][col]
                let path = dp[row][col]

                if 0..<N ~= row+next {
                    dp[row+next][col] += path
                }

                if 0..<N ~= col+next {
                    dp[row][col+next] += path
                }
            }
        }

        print(dp[N-1][N-1])
    }
}
