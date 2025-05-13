//
//  24446.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 5/22/24.
//

//  문제 링크: https://www.acmicpc.net/problem/24446
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색

import Shared

public struct BOJ24446: Solvable {
    public init() {}

    public func run() {
        // 메모리: 82240KB, 시간: 372ms, 코드 길이: 651B
        let NMR = readLine()!.split(separator: " ").map { Int($0)! }
        var graph = Array(repeating: [Int](), count: NMR[0])
        var depths = Array(repeating: -1, count: NMR[0])

        for _ in 0..<NMR[1] {
            let uv = readLine()!.split(separator: " ").map { Int($0)! - 1 }
            graph[uv[0]].append(uv[1])
            graph[uv[1]].append(uv[0])
        }

        var queue = [(NMR[2] - 1, 0)]
        depths[NMR[2] - 1] = 0
        var idx = 0

        while idx < queue.count {
            let (now, depth) = queue[idx]
            idx += 1

            for next in graph[now] where depths[next] == -1 {
                queue.append((next, depth + 1))
                depths[next] = depth + 1
            }
        }

        print(depths.map { String($0) }.joined(separator: "\n"))
    }
}
