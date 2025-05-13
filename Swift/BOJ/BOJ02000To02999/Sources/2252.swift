//
//  2252.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/12/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2252
//  알고리즘 분류: 그래프 이론, 위상 정렬, 방향 비순환 그래프

import Shared

public struct BOJ2252: Solvable {
    public init() {}

    public func run() {
        // 메모리: 72752KB, 시간: 160ms, 코드 길이: 678B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var graph = Array(repeating: [Int](), count: NM[0] + 1)
        var enters = Array(repeating: 0, count: NM[0] + 1)
        var queue = [Int]()

        for _ in 0..<NM[1] {
            let AB = readLine()!.split(separator: " ").map { Int($0)! }
            graph[AB[0]].append(AB[1])
            enters[AB[1]] += 1
        }

        for idx in 1...NM[0] where enters[idx] == 0 {
            queue.append(idx)
        }

        var idx = 0

        while idx < queue.count {
            let current = queue[idx]
            idx += 1

            for next in graph[current] {
                enters[next] -= 1

                if enters[next] == 0 {
                    queue.append(next)
                }
            }
        }

        print(queue.map { String($0) }.joined(separator: " "))
    }
}
