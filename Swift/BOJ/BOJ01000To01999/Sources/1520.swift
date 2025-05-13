//
//  1520.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/28/23.
//

//  문제 링크: https://www.acmicpc.net/problem/1520
//  알고리즘 분류: 다이나믹 프로그래밍, 그래프 이론, 그래프 탐색, 깊이 우선 탐색

import Shared

public struct BOJ1520: Solvable {
    public init() {}

    public func run() {
        // 메모리: 73408KB, 시간: 108ms, 코드 길이: 731B
        let MN = readLine()!.split(separator: " ").map { Int(String($0))! }
        var map = Array(repeating: Array(repeating: 0, count: MN[1]), count: MN[0])
        var dp = Array(repeating: Array(repeating: -1, count: MN[1]), count: MN[0])

        for idx in 0..<MN[0] {
            map[idx] = readLine()!.split(separator: " ").map { Int(String($0))! }
        }

        print(dfs(0, 0))

        func dfs(_ x: Int, _ y: Int) -> Int {
            if x == MN[0] - 1 && y == MN[1] - 1 {
                return 1
            }

            if dp[x][y] == -1 {
                dp[x][y] = 0

                [(x-1, y), (x, y-1), (x, y+1), (x+1, y)].forEach {
                    if 0..<MN[0] ~= $0.0 && 0..<MN[1] ~= $0.1 && map[x][y] > map[$0.0][$0.1] {
                        dp[x][y] += dfs($0.0, $0.1)
                    }
                }
            }

            return dp[x][y]
        }
    }
}
