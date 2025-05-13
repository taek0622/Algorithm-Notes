//
//  2479.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/11/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2479
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색

import Shared

public struct BOJ2479: Solvable {
    public init() {}

    public func run() {
        // 메모리: 71100KB, 시간: 40ms, 코드 길이: 1106B
        let NK = readLine()!.split(separator: " ").map { Int($0)! }
        var binary = Array(repeating: Array(repeating: false, count: NK[1]), count: NK[0] + 1)
        var graph = [Int: [Int]]()

        for idx in 1...NK[0] {
            binary[idx] = readLine()!.map { String($0) == "1" }
        }

        let AB = readLine()!.split(separator: " ").map { Int($0)! }

        for base in 1...NK[0] {
            for next in base...NK[0] where base != next {
                var count = 0

                for bin in 0..<NK[1] where binary[base][bin] != binary[next][bin] {
                    count += 1
                }

                if count == 1 {
                    graph[base, default: []].append(next)
                    graph[next, default: []].append(base)
                }
            }
        }

        var queue = [(AB[0], "\(AB[0]) ")]
        var idx = 0
        var visited = Array(repeating: false, count: NK[0] + 1)
        var path = "-1"
        visited[AB[0]] = true

        while idx < queue.count {
            let (now, move) = queue[idx]
            idx += 1

            if now == AB[1] {
                path = move
                break
            }

            for next in graph[now, default: []] where !visited[next] {
                visited[next] = true
                queue.append((next, move + "\(next) "))
            }
        }

        print(path)
    }
}
