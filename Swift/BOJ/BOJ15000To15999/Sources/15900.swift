//
//  15900.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 5/11/24.
//

//  문제 링크: https://www.acmicpc.net/problem/15900
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 트리, 깊이 우선 탐색

import Shared

public struct BOJ15900: Solvable {
    public init() {}

    public func run() {
        // 메모리: 157732KB, 시간: 1020ms, 코드 길이: 639B
        let N = Int(readLine()!)!
        var graph = Array(repeating: [Int](), count: N)
        var visited = Array(repeating: false, count: N)
        var count = 0

        for _ in 1..<N {
            let ab = readLine()!.split(separator: " ").map { Int($0)! - 1 }
            graph[ab[0]].append(ab[1])
            graph[ab[1]].append(ab[0])
        }

        visited[0] = true
        dfs(0, 0)

        print(count % 2 != 0 ? "Yes" : "No")

        func dfs(_ node: Int, _ depth: Int) {
            let nexts = graph[node].filter { !visited[$0] }

            if nexts.isEmpty {
                if depth % 2 == 1 {
                    count += 1
                }

                return
            }

            for next in nexts {
                visited[next] = true
                dfs(next, depth+1)
            }
        }
    }
}
