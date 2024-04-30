//
//  24480.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/30/24.
//

//  문제 링크: https://www.acmicpc.net/problem/24480
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 정렬, 깊이 우선 탐색

class BOJ24480: Solvable {
    func run() {
        // 메모리: 87312KB, 시간: 372ms, 코드 길이: 627B
        let NMR = readLine()!.split(separator: " ").map { Int($0)! }
        var graph = Array(repeating: [Int](), count: NMR[0])
        var visited = Array(repeating: 0, count: NMR[0])
        var move = 0

        for _ in 0..<NMR[1] {
            let uv = readLine()!.split(separator: " ").map { Int($0)! - 1 }
            graph[uv[0]].append(uv[1])
            graph[uv[1]].append(uv[0])
        }

        for idx in 0..<NMR[0] {
            graph[idx] = graph[idx].sorted().reversed()
        }

        dfs(NMR[2] - 1)

        print(visited.map { String($0) }.joined(separator: "\n"))

        func dfs(_ node: Int) {
            move += 1
            visited[node] = move

            for next in graph[node] where visited[next] == 0 {
                dfs(next)
            }
        }
    }
}
