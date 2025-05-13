//
//  2458.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/29/23.
//

//  문제 링크: https://www.acmicpc.net/problem/2458
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 깊이 우선 탐색, 최단 경로, 플로이드-워셜

import Shared

public struct BOJ2458: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 71088KB, 시간: 392ms, 코드 길이: 747B
    private func solution1() {
        let Inf = 100000000
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var graph = Array(repeating: Array(repeating: Inf, count: NM[0]), count: NM[0])
        var result = 0

        for _ in 0..<NM[1] {
            let input = readLine()!.split(separator: " ").map { Int($0)! - 1 }
            graph[input[0]][input[1]] = 1
        }

        for mid in 0..<NM[0] {
            for row in 0..<NM[0] {
                for col in 0..<NM[0] where graph[row][col] > graph[row][mid] + graph[mid][col] {
                    graph[row][col] = graph[row][mid] + graph[mid][col]
                }
            }
        }

        for row in 0..<NM[0] {
            var count = 0

            for col in 0..<NM[0] where graph[row][col] != Inf || graph[col][row] != Inf {
                count += 1
            }

            if count == NM[0] - 1 {
                result += 1
            }
        }

        print(result)
    }

    // 메모리: 71616KB, 시간: 172ms, 코드 길이: 811B
    private func solution2() {
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var graph = Array(repeating: [Int](), count: NM[0])
        var reversedGraph = graph
        var visited = Array(repeating: false, count: NM[0])
        var count = 0
        var result = 0

        for _ in 0..<NM[1] {
            let input = readLine()!.split(separator: " ").map { Int($0)! - 1 }
            graph[input[0]].append(input[1])
            reversedGraph[input[1]].append(input[0])
        }

        for idx in 0..<NM[0] {
            visited = Array(repeating: false, count: NM[0])
            count = 0

            visited[idx] = true
            dfs(idx, graph)
            dfs(idx, reversedGraph)

            if count == NM[0] - 1 {
                result += 1
            }
        }

        print(result)

        func dfs(_ current: Int, _ graph: [[Int]]) {
            for next in graph[current] where !visited[next] {
                visited[next] = true
                count += 1
                dfs(next, graph)
            }
        }
    }
}
