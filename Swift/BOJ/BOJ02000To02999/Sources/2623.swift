//
//  2623.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/8/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2623
//  알고리즘 분류: 그래프 이론, 위상 정렬, 방향 비순환 그래프

import Shared

public struct BOJ2623: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69256KB, 시간: 12ms, 코드 길이: 777B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var inDegree = Array(repeating: 0, count: NM[0])
        var graph = [Int: [Int]]()

        for _ in 0..<NM[1] {
            let input = readLine()!.split(separator: " ").map { Int($0)! }

            for idx in 1..<input[0] {
                graph[input[idx], default: []].append(input[idx+1])
                inDegree[input[idx+1]-1] += 1
            }
        }

        var queue = [Int]()

        for idx in 0..<NM[0] where inDegree[idx] == 0 {
            queue.append(idx+1)
        }

        var idx = 0

        while idx < queue.count {
            let now = queue[idx]
            idx += 1

            for next in graph[now, default: []] {
                inDegree[next-1] -= 1

                if inDegree[next-1] == 0 {
                    queue.append(next)
                }
            }
        }

        print(queue.count != NM[0] ? 0 : queue.map { String($0) }.joined(separator: "\n"))
    }
}
