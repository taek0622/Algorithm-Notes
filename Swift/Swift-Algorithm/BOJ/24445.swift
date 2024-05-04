//
//  24445.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 5/4/24.
//

//  문제 링크: https://www.acmicpc.net/problem/24445
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 정렬, 너비 우선 탐색

class BOJ24445: Solvable {
    func run() {
        // 메모리: 82032KB, 시간: 376ms, 코드 길이: 741B
        let NMR = readLine()!.split(separator: " ").map { Int($0)! }
        var graph = Array(repeating: [Int](), count: NMR[0])
        var visited = Array(repeating: 0, count: NMR[0])
        var move = 1

        for _ in 0..<NMR[1] {
            let uv = readLine()!.split(separator: " ").map { Int($0)! - 1 }
            graph[uv[0]].append(uv[1])
            graph[uv[1]].append(uv[0])
        }

        for idx in 0..<NMR[0] {
            graph[idx] = graph[idx].sorted().reversed()
        }

        var queue = [NMR[2] - 1]
        visited[NMR[2] - 1] = move
        move += 1
        var idx = 0

        while idx < queue.count {
            let now = queue[idx]
            idx += 1

            for next in graph[now] where visited[next] == 0 {
                visited[next] = move
                move += 1
                queue.append(next)
            }
        }

        print(visited.map { String($0) }.joined(separator: "\n"))
    }
}
