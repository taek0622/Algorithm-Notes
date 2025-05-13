//
//  1967.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/15/23.
//

//  문제 링크: https://www.acmicpc.net/problem/1967
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 트리, 깊이 우선 탐색

import Shared

public struct BOJ1967: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 72112KB, 시간: 32ms, 코드 길이: 763B
    private func solution1() {
        let n = Int(readLine()!)!
        var graph = [Int: [(Int, Int)]]()
        var endpoint = 0
        var diameter = 0

        for _ in 0..<n-1 {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            graph[input[0], default: []].append((input[1], input[2]))
            graph[input[1], default: []].append((input[0], input[2]))
        }

        dfs(0, 0, (1, 0))
        dfs(0, 0, (endpoint, 0))

        print(diameter)

        func dfs(_ sum: Int, _ previous: Int, _ current: (Int, Int)) {
            let nexts = graph[current.0, default: []].filter { $0.0 != previous }

            if nexts.count == 0 {
                if diameter < sum + current.1 {
                    endpoint = current.0
                    diameter = sum + current.1
                }

                return
            }

            for next in nexts {
                dfs(sum + current.1, current.0, next)
            }
        }
    }

    // 메모리: 70792KB, 시간: 32ms, 코드 길이: 923B
    private func solution2() {
        let n = Int(readLine()!)!
        var graph = [Int: [(Int, Int)]]()

        for _ in 0..<n-1 {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            graph[input[0], default: []].append((input[1], input[2]))
            graph[input[1], default: []].append((input[0], input[2]))
        }

        let endpoint = bfs(1).0

        print(bfs(endpoint).1)

        func bfs(_ start: Int) -> (Int, Int) {
            var queue = [(start, 0)]
            var idx = 0
            var visited = Array(repeating: false, count: n+1)
            var endpoint = 0
            var sum = 0

            visited[start] = true

            while idx < queue.count {
                let (current, weight) = queue[idx]
                idx += 1

                if sum < weight {
                    sum = weight
                    endpoint = current
                }

                for next in graph[current, default: []] where !visited[next.0] {
                    visited[next.0] = true
                    queue.append((next.0, weight + next.1))
                }
            }

            return (endpoint, sum)
        }
    }
}
