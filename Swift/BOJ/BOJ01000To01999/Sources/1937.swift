//
//  1937.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/24/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1937
//  알고리즘 분류: 다이나믹 프로그래밍, 그래프 이론, 그래프 탐색, 깊이 우선 탐색

class BOJ1937: Solvable {
    func run() {
        // 메모리: 135408KB, 시간: 172ms, 코드 길이: 687B
        let n = Int(readLine()!)!
        var map = Array(repeating: Array(repeating: 0, count: n), count: n)
        var dp = map
        var count = 0

        for idx in 0..<n {
            map[idx] = readLine()!.split(separator: " ").map { Int($0)! }
        }

        for row in 0..<n {
            for col in 0..<n where dp[row][col] == 0 {
                count = max(count, dfs(row, col))
            }
        }

        print(count)

        func dfs(_ row: Int, _ col: Int) -> Int {
            if dp[row][col] == 0 {
                dp[row][col] = 1

                for (nr, nc) in [(row-1, col), (row, col-1), (row, col+1), (row+1, col)] where 0..<n ~= nr && 0..<n ~= nc && map[nr][nc] > map[row][col] {
                    dp[row][col] = max(dp[row][col], dfs(nr, nc) + 1)
                }
            }

            return dp[row][col]
        }
    }
}
