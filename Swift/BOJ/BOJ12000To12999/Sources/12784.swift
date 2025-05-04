//
//  12784.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/23/24.
//

//  문제 링크: https://www.acmicpc.net/problem/12784
//  알고리즘 분류: 다이나믹 프로그래밍, 그래프 이론, 그래프 탐색, 트리, 깊이 우선 탐색, 트리에서의 다이나믹 프로그래밍

import Shared

public struct BOJ12784: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69280KB, 시간: 104ms, 코드 길이: 771B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let NM = readLine()!.split(separator: " ").map { Int($0)! }
            var graph = [Int: [(Int, Int)]]()

            for _ in 0..<NM[1] {
                let input = readLine()!.split(separator: " ").map { Int($0)! }
                graph[input[0], default: []].append((input[1], input[2]))
                graph[input[1], default: []].append((input[0], input[2]))
            }

            print(NM[1] == 0 ? 0 : dfs(0, 1, &graph))
        }

        func dfs(_ prev: Int, _ now: Int, _ graph: inout [Int: [(Int, Int)]]) -> Int {
            let nexts = graph[now, default: []].filter { $0.0 != prev }

            if nexts.isEmpty {
                return 100000000
            }

            var minDynamite = 0

            for next in nexts {
                minDynamite += min(dfs(now, next.0, &graph), next.1)
            }

            return minDynamite
        }
    }
}
