//
//  6118.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 5/7/24.
//

//  문제 링크: https://www.acmicpc.net/problem/6118
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색

class BOJ6118: Solvable {
    func run() {
        // 메모리: 72220KB, 시간: 88ms, 코드 길이: 803B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var graph = Array(repeating: [Int](), count: NM[0] + 1)
        var visited = Array(repeating: false, count: NM[0] + 1)
        var barns = [Int]()
        var distance = 0

        for _ in 0..<NM[1] {
            let AB = readLine()!.split(separator: " ").map { Int($0)! }
            graph[AB[0]].append(AB[1])
            graph[AB[1]].append(AB[0])
        }

        var queue = [(1, 0)]
        visited[1] = true
        var idx = 0

        while idx < queue.count {
            let (now, move) = queue[idx]
            idx += 1

            if move == distance {
                barns.append(now)
            } else if move > distance {
                distance = move
                barns = [now]
            }

            for next in graph[now] where !visited[next] {
                visited[next] = true
                queue.append((next, move+1))
            }
        }

        print("\(barns.sorted()[0]) \(distance) \(barns.count)")
    }
}
