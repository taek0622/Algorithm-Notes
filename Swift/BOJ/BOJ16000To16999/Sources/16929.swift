//
//  16929.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/31/24.
//

//  문제 링크: https://www.acmicpc.net/problem/16929
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 깊이 우선 탐색

import Shared

public struct BOJ16929: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 1078B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var map = Array(repeating: Array(repeating: "", count: NM[1]), count: NM[0])
        var visited = Array(repeating: Array(repeating: false, count: NM[1]), count: NM[0])
        var isCycle = false

        for idx in 0..<NM[0] {
            map[idx] = readLine()!.map { String($0) }
        }

        for row in 0..<NM[0] {
            for col in 0..<NM[1] where !visited[row][col] {
                visited[row][col] = true
                dfs(map[row][col], row, col, 1, row, col)

                if isCycle { break }
            }
        }

        print(isCycle ? "Yes" : "No")

        func dfs(_ color: String, _ y: Int, _ x: Int, _ count: Int, _ startY: Int, _ startX: Int) {
            if isCycle { return }

            for (ny, nx) in [(y-1, x), (y, x-1), (y, x+1), (y+1, x)] where 0..<NM[0] ~= ny && 0..<NM[1] ~= nx {
                if count >= 4 && ny == startY && nx == startX {
                    isCycle = true
                    return
                }

                if map[ny][nx] == color && !visited[ny][nx] {
                    visited[ny][nx] = true
                    dfs(color, ny, nx, count + 1, startY, startX)
                    visited[ny][nx] = false
                }
            }
        }
    }
}
