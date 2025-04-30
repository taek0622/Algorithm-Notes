//
//  24230.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/22/24.
//

//  문제 링크: https://www.acmicpc.net/problem/24230
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 트리, 깊이 우선 탐색

class BOJ24230: Solvable {
    func run() {
        // 메모리: 100836KB, 시간: 520ms, 코드 길이: 639B
        let N = Int(readLine()!)!
        let C = readLine()!.split(separator: " ").map { Int($0)! }
        var graph = [Int: [Int]]()
        var count = 0

        for _ in 1..<N {
            let input = readLine()!.split(separator: " ").map { Int($0)! - 1 }
            graph[input[0], default: []].append(input[1])
            graph[input[1], default: []].append(input[0])
        }

        var queue = [(0, 0)]
        var idx = 0

        if C[0] != 0 {
            count += 1
        }

        while idx < queue.count {
            let (prev, now) = queue[idx]
            idx += 1

            for next in graph[now, default: []] where next != prev {
                queue.append((now, next))

                if C[now] != C[next] {
                    count += 1
                }
            }
        }

        print(count)
    }
}

