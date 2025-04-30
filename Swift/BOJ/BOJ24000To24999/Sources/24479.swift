//
//  24479.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/26/24.
//

//  문제 링크: https://www.acmicpc.net/problem/24479
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 정렬, 깊이 우선 탐색

class BOJ24479: Solvable {
    func run() {
        // 메모리: 87312KB, 시간: 368ms, 코드 길이: 598B
        let NMR = readLine()!.split(separator: " ").map { Int($0)! }
        var graph = Array(repeating: [Int](), count: NMR[0])
        var visited = Array(repeating: 0, count: NMR[0])
        var move = 0

        for _ in 0..<NMR[1] {
            let uv = readLine()!.split(separator: " ").map { Int($0)! - 1 }
            graph[uv[0]].append(uv[1])
            graph[uv[1]].append(uv[0])
        }

        for num in 0..<NMR[0] {
            graph[num].sort()
        }

        dfs(NMR[2] - 1)

        print(visited.map { String($0) }.joined(separator: "\n"))

        func dfs(_ now: Int) {
            move += 1
            visited[now] = move

            for next in graph[now] where visited[next] == 0 {
                dfs(next)
            }
        }
    }
}
