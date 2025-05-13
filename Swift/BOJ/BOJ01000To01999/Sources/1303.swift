//
//  1303.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 5/1/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1303
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색, 깊이 우선 탐색

import Shared

public struct BOJ1303: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 12ms, 코드 길이: 979B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var map = Array(repeating: Array(repeating: false, count: NM[0]), count: NM[1])
        var visited = map
        var (wPower, bPower) = (0, 0)

        for idx in 0..<NM[1] {
            let input = readLine()!.map { $0 == "W" }
            map[idx] = input
        }

        for row in 0..<NM[1] {
            for col in 0..<NM[0] where !visited[row][col] {
                var queue = [(row, col)]
                visited[row][col] = true
                var idx = 0

                while idx < queue.count {
                    let (r, c) = queue[idx]
                    idx += 1

                    for (nr, nc) in [(r-1, c), (r, c-1), (r, c+1), (r+1, c)] where 0..<NM[1] ~= nr && 0..<NM[0] ~= nc && !visited[nr][nc] && map[r][c] == map[nr][nc] {
                        visited[nr][nc] = true
                        queue.append((nr, nc))
                    }
                }

                if map[row][col] {
                    wPower += queue.count * queue.count
                } else {
                    bPower += queue.count * queue.count
                }
            }
        }

        print(wPower, bPower)
    }
}
