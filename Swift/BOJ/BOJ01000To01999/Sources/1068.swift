//
//  1068.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/18/23.
//

//  문제 링크: https://www.acmicpc.net/problem/1068
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 트리, 깊이 우선 탐색

class BOJ1068: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69108KB, 시간: 8ms, 코드 길이: 655B
    private func solution1() {
        _ = Int(readLine()!)!
        var graph = [Int: [Int]]()
        let nodes = readLine()!.split(separator: " ").map { Int(String($0))! }
        var queue = [Int]()
        var count = 0

        for idx in nodes.indices {
            graph[nodes[idx], default: []].append(idx)

            if nodes[idx] == -1 {
                queue.append(idx)
            }
        }

        let removeNode = Int(readLine()!)!
        var idx = 0

        if queue[0] == removeNode {
            queue = []
        }

        while idx < queue.count {
            let now = queue[idx]
            idx += 1

            let nexts = graph[now, default: []].filter { $0 != removeNode }

            if nexts == [] {
                count += 1
                continue
            }

            for next in nexts {
                queue.append(next)
            }
        }

        print(count)
    }

    // 메모리: 69108KB, 시간: 8ms, 코드 길이: 580B
    private func solution2() {
        _ = Int(readLine()!)!
        var graph = [Int: [Int]]()
        let nodes = readLine()!.split(separator: " ").map { Int(String($0))! }
        var start = -1
        var count = 0

        for idx in nodes.indices {
            graph[nodes[idx], default: []].append(idx)

            if nodes[idx] == -1 {
                start = idx
            }
        }

        let removeNode = Int(readLine()!)!

        if start != removeNode {
            dfs(start)
        }

        print(count)

        func dfs(_ start: Int) {
            let nexts = graph[start, default: []].filter { $0 != removeNode }

            if nexts == [] {
                count += 1
                return
            }

            for next in nexts {
                dfs(next)
            }
        }
    }
}
