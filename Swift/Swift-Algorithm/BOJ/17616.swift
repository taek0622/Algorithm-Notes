//
//  17616.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/9/24.
//

//  문제 링크: https://www.acmicpc.net/problem/17616
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색, 깊이 우선 탐색

class BOJ17616: Solvable {
    func run() {
        // 메모리: 93840KB, 시간: 904ms, 코드 길이: 795B
        let NMX = readLine()!.split(separator: " ").map { Int($0)! }
        var inGraph = [Int: [Int]]()
        var outGraph = [Int: [Int]]()

        for _ in 0..<NMX[1] {
            let AB = readLine()!.split(separator: " ").map { Int($0)! }
            inGraph[AB[1], default: []].append(AB[0])
            outGraph[AB[0], default: []].append(AB[1])
        }

        print("\(1 + getRank(inGraph)) \(NMX[0] - getRank(outGraph))")

        func getRank(_ graph: [Int: [Int]]) -> Int {
            var queue = [NMX[2]]
            var idx = 0
            var visited = Array(repeating: false, count: NMX[0] + 1)
            visited[NMX[2]] = true

            while idx < queue.count {
                let now = queue[idx]
                idx += 1

                for next in graph[now, default: []] where !visited[next] {
                    visited[next] = true
                    queue.append(next)
                }
            }

            return queue.count - 1
        }
    }
}
