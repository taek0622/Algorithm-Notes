//
//  4803.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/23/24.
//

//  문제 링크: https://www.acmicpc.net/problem/4803
//  알고리즘 분류: 자료 구조, 그래프 이론, 그래프 탐색, 트리, 깊이 우선 탐색, 분리 집합

class BOJ4803: Solvable {
    func run() {
        // 메모리: 71104KB, 시간: 224ms, 코드 길이: 1161B
        var caseNum = 0

        while let input = readLine(), input != "0 0" {
            caseNum += 1

            let nm = input.split(separator: " ").map { Int($0)! }
            var visited = Array(repeating: false, count: nm[0] + 1)
            var graph = [Int: [Int]]()
            var isTree = true
            var count = 0

            for _ in 0..<nm[1] {
                let nodes = readLine()!.split(separator: " ").map { Int($0)! }
                graph[nodes[0], default: []].append(nodes[1])
                graph[nodes[1], default: []].append(nodes[0])
            }

            for node in 1...nm[0] where !visited[node] {
                isTree = true
                count += dfs(0, node, &isTree, &visited, graph) ? 1 : 0
            }

            if count == 0 {
                print("Case \(caseNum): No trees.")
            } else {
                print("Case \(caseNum): \(count == 1 ? "There is one tree." : "A forest of \(count) trees.")")
            }
        }

        func dfs(_ prev: Int, _ now: Int, _ isTree: inout Bool, _ visited: inout [Bool], _ graph: [Int: [Int]]) -> Bool {
            visited[now] = true

            for next in graph[now, default: []] where next != prev {
                if visited[next] {
                    return false
                }

                isTree = dfs(now, next, &isTree, &visited, graph)
            }

            return isTree
        }
    }
}
