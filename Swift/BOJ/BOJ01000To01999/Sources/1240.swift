//
//  1240.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/29/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1240
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 트리, 너비 우선 탐색, 깊이 우선 탐색

import Shared

public struct BOJ1240: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69244KB, 시간: 44ms, 코드 길이: 1001B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var graph = [Int: [(Int, Int)]]()

        for _ in 1..<NM[0] {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            graph[input[0], default: []].append((input[1], input[2]))
            graph[input[1], default: []].append((input[0], input[2]))
        }

        for _ in 0..<NM[1] {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            print(bfs(input[0], input[1]))
        }

        func bfs(_ start: Int, _ end: Int) -> Int {
            var result = 0

            var queue = [(start, 0)]
            var idx = 0
            var visited = Array(repeating: false, count: NM[0] + 1)
            visited[start] = true

            while idx < queue.count {
                let (node, distance) = queue[idx]
                idx += 1

                if node == end {
                    result = distance
                    break
                }

                for next in graph[node, default: []] where !visited[next.0] {
                    visited[next.0] = true
                    queue.append((next.0, next.1 + distance))
                }
            }

            return result
        }
    }
}
