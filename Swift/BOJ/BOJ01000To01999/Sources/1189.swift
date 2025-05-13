//
//  1189.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 5/6/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1189
//  알고리즘 분류: 그래프 이론, 브루트포스 알고리즘, 그래프 탐색, 깊이 우선 탐색, 백트래킹

import Shared

public struct BOJ1189: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 12ms, 코드 길이: 766B
        let RCK = readLine()!.split(separator: " ").map { Int($0)! }
        var visited = Array(repeating: Array(repeating: false, count: RCK[1]), count: RCK[0])
        var count = 0

        for idx in 0..<RCK[0] {
            visited[idx] = readLine()!.map { String($0) == "T" }
        }

        visited[RCK[0]-1][0] = true
        dfs(RCK[0] - 1, 0, 1)
        print(count)

        func dfs(_ row: Int, _ col: Int, _ move: Int) {
            if row == 0 && col == RCK[1] - 1 {
                if move == RCK[2] {
                    count += 1
                }

                return
            }

            if move > RCK[2] {
                return
            }

            for (nr, nc) in [(row-1, col), (row, col-1), (row, col+1), (row+1, col)] where 0..<RCK[0] ~= nr && 0..<RCK[1] ~= nc && !visited[nr][nc] {
                visited[nr][nc] = true
                dfs(nr, nc, move+1)
                visited[nr][nc] = false
            }
        }
    }
}
