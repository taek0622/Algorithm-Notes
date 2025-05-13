//
//  1260.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/09/23.
//

//  문제 링크: https://www.acmicpc.net/problem/1260
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색, 깊이 우선 탐색

import Shared

public struct BOJ1260: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69856KB, 시간: 80ms, 코드 길이: 899B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var graph = [Int: [Int]]()
        var result = ""

        for _ in 0..<input[1] {
            let vertex = readLine()!.split(separator: " ").map { Int(String($0))! }
            graph[vertex[0], default: []].append(vertex[1])
            graph[vertex[1], default: []].append(vertex[0])
        }

        graph.keys.forEach {
            graph[$0]?.sort()
        }

        var visited = [Int]()
        bfs(input[2])
        result += "\n"
        visited = []

        var queue = [input[2]]
        while !queue.isEmpty {
            let current = queue.removeFirst()
            if !visited.contains(current) {
                result += "\(current) "
                queue.append(contentsOf: graph[current] ?? [])
                visited.append(current)
            }
        }

        print(result)

        func bfs(_ num: Int) {
            if visited.count == input[0] || visited.contains(num) {
                return
            }

            result += "\(num) "
            visited.append(num)

            graph[num]?.forEach {
                bfs($0)
            }
        }
    }
}
