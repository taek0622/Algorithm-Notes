//
//  11403.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/5/23.
//

//  문제 링크: https://www.acmicpc.net/problem/11403
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 최단 경로, 플로이드-워셜

import Shared

public struct BOJ11403: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69116KB, 시간: 20ms, 코드 길이: 691B
    private func solution1() {
        let N = Int(readLine()!)!
        var graph = [Int: [Int]]()
        var path = Array(repeating: Array(repeating: 0, count: N), count: N)

        for node in 0..<N {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }

            for idx in input.indices where input[idx] == 1 {
                graph[node, default: []].append(idx)
            }
        }

        for node in 0..<N {
            var queue = graph[node, default: []]
            var visited = Set(queue)

            while !queue.isEmpty {
                let next = queue.removeFirst()
                path[node][next] = 1
                queue.append(contentsOf: graph[next, default: []].filter { visited.insert($0).inserted })
            }
        }

        path.forEach {
            print($0.map { String($0) }.joined(separator: " "))
        }
    }

    // 메모리: 69240KB, 시간: 12ms, 코드 길이: 657B
    private func solution2() {
        let N = Int(readLine()!)!
        var graph = [Int: [Int]]()
        var path = Array(repeating: Array(repeating: "0", count: N), count: N)

        for node in 0..<N {
            let input = readLine()!.split(separator: " ").map { $0 }

            for idx in input.indices where input[idx] == "1" {
                graph[node, default: []].append(idx)
            }
        }

        for node in 0..<N {
            findPath(node, node)
        }

        path.forEach {
            print($0.joined(separator: " "))
        }

        func findPath(_ current: Int, _ base: Int) {
            for next in graph[base, default: []] where path[current][next] != "1" {
                path[current][next] = "1"

                if current != next {
                    findPath(current, next)
                }
            }
        }
    }
}
