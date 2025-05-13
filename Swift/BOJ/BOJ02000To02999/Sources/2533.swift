//
//  2533.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/13/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2533
//  알고리즘 분류: 다이나믹 프로그래밍, 트리, 트리에서의 다이나믹 프로그래밍

import Shared

public struct BOJ2533: Solvable {
    public init() {}

    public func run() {
        // 메모리: 236644KB, 시간: 2532ms, 코드 길이: 709B
        let N = Int(readLine()!)!
        var dp = Array(repeating: Array(repeating: 0, count: 2), count: N)
        var visited = Array(repeating: false, count: N)
        var graph = [Int: [Int]]()

        for _ in 0..<N-1 {
            let uv = readLine()!.split(separator: " ").map { Int($0)! - 1 }
            graph[uv[0], default: []].append(uv[1])
            graph[uv[1], default: []].append(uv[0])
        }

        calculateMinimumEarlyAdopter(0)

        print(min(dp[0][0], dp[0][1]))

        func calculateMinimumEarlyAdopter(_ node: Int) {
            visited[node] = true
            dp[node][0] = 1

            for next in graph[node, default: []] where !visited[next] {
                calculateMinimumEarlyAdopter(next)
                dp[node][1] += dp[next][0]
                dp[node][0] += min(dp[next][0], dp[next][1])
            }
        }
    }
}
