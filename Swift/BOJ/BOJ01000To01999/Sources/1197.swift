//
//  1197.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/12/23.
//

//  문제 링크: https://www.acmicpc.net/problem/1197
//  알고리즘 분류: 그래프 이론, 최소 스패닝 트리

class BOJ1197: Solvable {
    func run() {
        // 메모리: 73900KB, 시간: 188ms, 코드 길이: 754B
        let VE = readLine()!.split(separator: " ").map { Int($0)! }
        var graph = Array(0...VE[0])
        var edges = [((Int, Int), Int)]()
        var result = 0

        for _ in 0..<VE[1] {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            edges.append(((input[0], input[1]), input[2]))
        }

        edges.sort { $0.1 < $1.1 }

        for edge in edges where find(edge.0.0) != find(edge.0.1) {
            union(edge.0)
            result += edge.1
        }

        print(result)

        func find(_ node: Int) -> Int {
            if graph[node] != node {
                graph[node] = find(graph[node])
            }

            return graph[node]
        }

        func union(_ nodes: (Int, Int)) {
            let node1 = find(nodes.0)
            let node2 = find(nodes.1)

            if node1 < node2 {
                graph[node2] = node1
                return
            }

            graph[node1] = node2
        }
    }
}
