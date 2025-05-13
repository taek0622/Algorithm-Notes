//
//  1516.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/2/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1516
//  알고리즘 분류: 다이나믹 프로그래밍, 그래프 이론, 위상 정렬, 방향 비순환 그래프

import Shared

public struct BOJ1516: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69728KB, 시간: 32ms, 코드 길이: 1042B
        let N = Int(readLine()!)!
        var graph = [Int: [Int]]()
        var degree = Array(repeating: 0, count: N+1)
        degree[0] = -1
        var time = Array(repeating: 0, count: N+1)

        for idx in  1...N {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            time[idx] = input[0]

            for num in input[1..<input.count-1] where num != -1 {
                graph[num, default: []].append(idx)
                degree[idx] += 1
            }
        }

        var queue = degree.enumerated().filter { $0.element == 0 }.map { $0.offset }
        var result = Array(repeating: 0, count: N+1)

        queue.forEach { idx in
            result[idx] = time[idx]
        }

        while !queue.isEmpty {
            let now = queue.removeFirst()

            if let sequence = graph[now] {
                let maxTime = max(time[now], result[now])

                for idx in sequence {
                    degree[idx] -= 1

                    if degree[idx] == 0 {
                        queue.append(idx)
                    }

                    result[idx] = max(result[idx], (maxTime + time[idx]))
                }
            }
        }

        print(result[1...].map { String($0) }.joined(separator: "\n"))
    }
}
