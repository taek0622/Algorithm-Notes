//
//  5014.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/15/24.
//

//  문제 링크: https://www.acmicpc.net/problem/5014
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색

import Shared

public struct BOJ5014: Solvable {
    public init() {}

    public func run() {
        // 메모리: 70088KB, 시간: 92ms, 코드 길이: 690B
        let FSGUD = readLine()!.split(separator: " ").map { Int($0)! }
        var queue = [(FSGUD[1], 0)]
        var visited = Array(repeating: false, count: FSGUD[0] + 1)
        visited[FSGUD[1]] = true
        var isCount = false
        var count = 0

        if FSGUD[1] == FSGUD[2] {
            isCount = true
        }

        while !queue.isEmpty {
            if isCount {
                break
            }

            let now = queue.removeFirst()

            for next in [now.0 + FSGUD[3], now.0 - FSGUD[4]] where 1...FSGUD[0] ~= next && !visited[next] {
                visited[next] = true

                if next == FSGUD[2] {
                    isCount = true
                    count = now.1 + 1
                    break
                }

                queue.append((next, now.1 + 1))
            }
        }

        print(isCount ? count : "use the stairs")
    }
}
