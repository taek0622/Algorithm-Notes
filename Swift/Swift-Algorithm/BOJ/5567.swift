//
//  5567.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/27/24.
//

//  문제 링크: https://www.acmicpc.net/problem/5567
//  알고리즘 분류: 그래프 이론, 그래프 탐색

class BOJ5567: Solvable {
    func run() {
        // 메모리: 69376KB, 시간: 24ms, 코드 길이: 695B
        let n = Int(readLine()!)!
        let m = Int(readLine()!)!
        var graph = [Int: [Int]]()
        var visited = Array(repeating: false, count: n+1)
        var count = 0

        for _ in 0..<m {
            let ab = readLine()!.split(separator: " ").map { Int($0)! }
            graph[ab[0], default: []].append(ab[1])
            graph[ab[1], default: []].append(ab[0])
        }

        var queue = [(1, 0)]
        visited[1] = true
        var idx = 0

        while idx < queue.count {
            let (now, move) = queue[idx]
            idx += 1

            if 1...2 ~= move {
                count += 1

                if move == 2 {
                    continue
                }
            }

            for next in graph[now, default: []] where !visited[next] {
                visited[next] = true
                queue.append((next, move+1))
            }
        }

        print(count)
    }
}
