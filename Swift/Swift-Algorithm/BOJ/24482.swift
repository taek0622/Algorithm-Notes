//
//  24482.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 5/21/24.
//

//  문제 링크: https://www.acmicpc.net/problem/24482
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 정렬, 깊이 우선 탐색

class BOJ24482: Solvable {
    func run() {
        // 메모리: 87312KB, 시간: 372ms, 코드 길이: 633B
        let NMR = readLine()!.split(separator: " ").map { Int($0)! }
        var graph = Array(repeating: [Int](), count: NMR[0])
        var depths = Array(repeating: -1, count: NMR[0])

        for _ in 0..<NMR[1] {
            let uv = readLine()!.split(separator: " ").map { Int($0)! - 1 }
            graph[uv[0]].append(uv[1])
            graph[uv[1]].append(uv[0])
        }

        for idx in 0..<NMR[0] {
            graph[idx].sort()
            graph[idx].reverse()
        }

        dfs(NMR[2] - 1, 0)

        print(depths.map { String($0) }.joined(separator: "\n"))

        func dfs(_ current: Int, _ depth: Int) {
            depths[current] = depth

            for next in graph[current] where depths[next] == -1 {
                dfs(next, depth+1)
            }
        }
    }
}
