//
//  1707.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/30/23.
//

//  문제 링크: https://www.acmicpc.net/problem/1707
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색, 깊이 우선 탐색, 이분 그래프

import Shared

public struct BOJ1707: Solvable {
    public init() {}

    public func run() {
        solution1()
    }

    // 메모리: 76816KB, 시간: 1504ms, 코드 길이: 1120B
    private func solution1() {
        let K = Int(readLine()!)!

        for _ in 0..<K {
            let VE = readLine()!.split(separator: " ").map { Int($0)! }
            var groups = Array(repeating: 0, count: VE[0])
            var graph = [Int: [Int]]()
            var isBipartite = true

            for _ in 0..<VE[1] {
                let input = readLine()!.split(separator: " ").map { Int($0)! - 1 }
                graph[input[0], default: []].append(input[1])
                graph[input[1], default: []].append(input[0])
            }

            for start in 0..<VE[0] where groups[start] == 0 {
                var queue = [start]
                groups[start] = 1
                var idx = 0

                while idx < queue.count {
                    let current = queue[idx]
                    idx += 1

                    for next in graph[current, default: []] {
                        if groups[current] == groups[next] {
                            isBipartite = false
                            break
                        } else if groups[next] == 0 {
                            queue.append(next)
                            groups[next] = -groups[current]
                        }
                    }

                    if !isBipartite {
                        break
                    }
                }
            }

            print(isBipartite ? "YES" : "NO")
        }
    }

    // 메모리: 77912KB, 시간: 1524ms, 코드 길이: 914B
    private func solution2() {
        let K = Int(readLine()!)!

        for _ in 0..<K {
            let VE = readLine()!.split(separator: " ").map { Int($0)! }
            var groups = Array(repeating: 0, count: VE[0])
            var graph = [Int: [Int]]()
            var isBipartite = true

            for _ in 0..<VE[1] {
                let input = readLine()!.split(separator: " ").map { Int($0)! - 1 }
                graph[input[0], default: []].append(input[1])
                graph[input[1], default: []].append(input[0])
            }

            for start in 0..<VE[0] where groups[start] == 0 {
                groups[start] = 1
                dfs(start)
            }

            print(isBipartite ? "YES" : "NO")

            func dfs(_ current: Int) {
                for next in graph[current, default: []] {
                    if groups[current] == groups[next] {
                        isBipartite = false
                        return
                    } else if groups[next] == 0 {
                        groups[next] = -groups[current]
                        dfs(next)
                    }
                }
            }
        }
    }
}
