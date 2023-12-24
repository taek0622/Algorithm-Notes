//
//  4485.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/24/23.
//

//  문제 링크: https://www.acmicpc.net/problem/4485
//  알고리즘 분류: 그래프 이론, 데이크스트라, 최단 경로

class BOJ4485: Solvable {
    func run() {
        // 메모리: 69400KB, 시간: 424ms, 코드 길이: 941B
        var seq = 1

        while let input = readLine(), input != "0" {
            let N = Int(input)!
            var map = Array(repeating: Array(repeating: 0, count: N), count: N)
            var costs = Array(repeating: Array(repeating: Int.max, count: N), count: N)
            var visited = Array(repeating: Array(repeating: false, count: N), count: N)

            for idx in 0..<N {
                map[idx] = readLine()!.split(separator: " ").map { Int($0)! }
            }

            var queue = [(0, 0, map[0][0])]

            while !queue.isEmpty {
                let (x, y, rupee) = queue.removeLast()
                visited[x][y] = true
                costs[x][y] = min(costs[x][y], rupee)

                [(x-1, y), (x, y-1), (x, y+1), (x+1, y)].forEach {
                    if 0..<N ~= $0.0 && 0..<N ~= $0.1 && !visited[$0.0][$0.1] {
                        queue.append(($0.0, $0.1, costs[x][y] + map[$0.0][$0.1]))
                    }
                }

                queue.sort(by: { $0.2 > $1.2 })
            }

            print("Problem \(seq): \(costs[N-1][N-1])")
            seq += 1
        }
    }
}
