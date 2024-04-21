//
//  19542.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/21/24.
//

//  문제 링크: https://www.acmicpc.net/problem/19542
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 트리, 깊이 우선 탐색

class BOJ19542: Solvable {
    func run() {
        // 메모리: 82984KB, 시간: 200ms, 코드 길이: 572B
        let NSD = readLine()!.split(separator: " ").map { Int($0)! }
        var graph = [Int: [Int]]()
        var move = 0

        for _ in 0..<NSD[0]-1 {
            let xy = readLine()!.split(separator: " ").map { Int($0)! }
            graph[xy[0], default: []].append(xy[1])
            graph[xy[1], default: []].append(xy[0])
        }

        _ = dfs(0, NSD[1])

        print(max(0, (move - 1) * 2))

        func dfs(_ prev: Int, _ now: Int) -> Int {
            var path = 0

            for next in graph[now, default: []] where next != prev {
                path = max(path, dfs(now, next))
            }

            if path >= NSD[2] {
                move += 1
            }

            return path + 1
        }
    }
}
