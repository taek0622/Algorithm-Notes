//
//  18352.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/25/24.
//

//  문제 링크: https://www.acmicpc.net/problem/18352
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색, 데이크스트라, 최단 경로

import Shared

public struct BOJ18352: Solvable {
    public init() {}

    public func run() {
        // 메모리: 101480KB, 시간: 1696ms, 코드 길이: 746B
        let NMKX = readLine()!.split(separator: " ").map { Int($0)! }
        var graph = [Int: [Int]]()
        var visited = Array(repeating: false, count: NMKX[0] + 1)
        var result = Set<Int>()

        for _ in 0..<NMKX[1] {
            let AB = readLine()!.split(separator: " ").map { Int($0)! }
            graph[AB[0], default: []].append(AB[1])
        }

        var queue = [(NMKX[3], 0)]
        visited[NMKX[3]] = true
        var idx = 0

        while idx < queue.count {
            let (now, move) = queue[idx]
            idx += 1

            if move == NMKX[2] {
                result.insert(now)
                continue
            }

            for next in graph[now, default: []] where !visited[next] {
                visited[next] = true
                queue.append((next, move + 1))
            }
        }

        print(result.isEmpty ? -1 : result.sorted().map { String($0) }.joined(separator: "\n"))
    }
}
