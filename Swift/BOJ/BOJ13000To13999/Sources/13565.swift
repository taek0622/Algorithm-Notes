//
//  13565.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 5/8/24.
//

//  문제 링크: https://www.acmicpc.net/problem/13565
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색, 깊이 우선 탐색

import Shared

public struct BOJ13565: Solvable {
    public init() {}

    public func run() {
        // 메모리: 83132KB, 시간: 88ms, 코드 길이: 805B
        let MN = readLine()!.split(separator: " ").map { Int($0)! }
        var map = Array(repeating: Array(repeating: false, count: MN[1]), count: MN[0])
        var isPercolated = false

        for idx in 0..<MN[0] {
            map[idx] = readLine()!.map { $0 == "1" }
        }

        for start in 0..<MN[1] where !isPercolated && !map[0][start] {
            map[0][start] = true
            var queue = [(0, start)]
            var idx = 0

            while idx < queue.count {
                let (row, col) = queue[idx]
                idx += 1

                if row == MN[0] - 1 {
                    isPercolated = true
                    break
                }

                for (nr, nc) in [(row-1, col), (row, col-1), (row, col+1), (row+1, col)] where 0..<MN[0] ~= nr && 0..<MN[1] ~= nc && !map[nr][nc] {
                    map[nr][nc] = true
                    queue.append((nr, nc))
                }
            }
        }

        print(isPercolated ? "YES" : "NO")
    }
}
