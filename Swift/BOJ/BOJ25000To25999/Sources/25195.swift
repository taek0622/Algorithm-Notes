//
//  25195.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/20/24.
//

//  문제 링크: https://www.acmicpc.net/problem/25195
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색, 깊이 우선 탐색

import Shared

public struct BOJ25195: Solvable {
    public init() {}

    public func run() {
        // 메모리: 86940KB, 시간: 204ms, 코드 길이: 687B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var graph = [Int: [Int]]()
        var result = "Yes"

        for _ in 0..<NM[1] {
            let uv = readLine()!.split(separator: " ").map { Int($0)! }
            graph[uv[0], default: []].append(uv[1])
        }

        _ = Int(readLine()!)!
        let s = readLine()!.split(separator: " ").map { Int($0)! }

        if !s.contains(1) {
            var queue = [1]
            var idx = 0

            while idx < queue.count {
                let now = queue[idx]
                idx += 1

                if graph[now, default: []] == [] {
                    result = "yes"
                    break
                }

                for next in graph[now, default: []] where !s.contains(next) {
                    queue.append(next)
                }
            }
        }

        print(result)
    }
}
