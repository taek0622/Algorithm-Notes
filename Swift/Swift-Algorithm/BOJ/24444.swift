//
//  24444.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/28/24.
//

//  문제 링크: https://www.acmicpc.net/problem/24444
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 정렬, 너비 우선 탐색

class BOJ24444: Solvable {
    func run() {
        // 메모리: 83604KB, 시간: 360ms, 코드 길이: 716B
        let NMR = readLine()!.split(separator: " ").map { Int($0)! }
        var graph = Array(repeating: [Int](), count: NMR[0])
        var visited = Array(repeating: 0, count: NMR[0])
        var count = 1

        for _ in 0..<NMR[1] {
            let uv = readLine()!.split(separator: " ").map { Int($0)! - 1 }
            graph[uv[0]].append(uv[1])
            graph[uv[1]].append(uv[0])
        }

        for idx in 0..<NMR[0] {
            graph[idx].sort()
        }

        var queue = [NMR[2]-1]
        visited[NMR[2]-1] = count
        count += 1
        var idx = 0

        while idx < queue.count {
            let now = queue[idx]
            idx += 1

            for next in graph[now] where visited[next] == 0 {
                visited[next] = count
                count += 1
                queue.append(next)
            }
        }

        print(visited.map { String($0) }.joined(separator: "\n"))
    }
}
