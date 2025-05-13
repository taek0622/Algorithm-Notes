//
//  13265.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/17/24.
//

//  문제 링크: https://www.acmicpc.net/problem/13265
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색, 깊이 우선 탐색, 이분 그래프

import Shared

public struct BOJ13265: Solvable {
    public init() {}

    public func run() {
        // 메모리: 71632KB, 시간: 636ms, 코드 길이: 1132B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let nm = readLine()!.split(separator: " ").map { Int($0)! }
            var graph = [Int: [Int]]()
            var circle = Array(repeating: -1, count: nm[0])

            for _ in 0..<nm[1] {
                let input = readLine()!.split(separator: " ").map { Int($0)! - 1 }
                graph[input[0], default: []].append(input[1])
                graph[input[1], default: []].append(input[0])
            }

            var isPossible = true

            for num in 0..<nm[0] where isPossible && circle[num] == -1 {
                var queue = [num]
                circle[num] = 0
                var idx = 0

                while idx < queue.count {
                    let now = queue[idx]
                    idx += 1

                    if !isPossible {
                        break
                    }

                    for next in graph[now, default: []] {
                        if circle[next] == -1 {
                            queue.append(next)
                            circle[next] = (circle[now] + 1) % 2
                        } else if circle[next] == circle[now] {
                            isPossible = false
                            break
                        }
                    }
                }
            }

            print(isPossible ? "possible" : "impossible")
        }
    }
}
