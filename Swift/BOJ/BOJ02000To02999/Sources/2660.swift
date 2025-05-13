//
//  2660.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/26/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2660
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색, 최단 경로, 플로이드-워셜

import Shared

public struct BOJ2660: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69108KB, 시간: 12ms, 코드 길이: 920B
    private func solution1() {
        let people = Int(readLine()!)!
        var friends = Array(repeating: Array(repeating: 3000, count: people), count: people)
        var minScore = 3000
        var chairman = [Int]()

        while let input = readLine(), input != "-1 -1" {
            let relation = input.split(separator: " ").map { Int($0)! - 1 }
            friends[relation[0]][relation[1]] = 1
            friends[relation[1]][relation[0]] = 1
        }

        for mid in 0..<people {
            for row in 0..<people {
                for col in 0..<people {
                    friends[row][col] = min(friends[row][col], friends[row][mid] + friends[mid][col])
                }
            }
        }

        for idx in 0..<people {
            friends[idx][idx] = 0
        }

        for idx in 0..<people {
            let score = friends[idx].max()!

            if minScore > score {
                minScore = score
                chairman = [idx]
            } else if minScore == score {
                chairman.append(idx)
            }
        }

        print("\(minScore) \(chairman.count)\n\(chairman.map { String($0 + 1) }.joined(separator: " "))")
    }

    // 메모리: 69108KB, 시간: 8ms, 코드 길이: 1046B
    private func solution2() {
        let people = Int(readLine()!)!
        var friends = Array(repeating: [Int](), count: people)
        var minScore = 3000
        var chairman = [String]()

        while let input = readLine(), input != "-1 -1" {
            let relation = input.split(separator: " ").map { Int($0)! - 1 }
            friends[relation[0]].append(relation[1])
            friends[relation[1]].append(relation[0])
        }

        for idx in 1...people {
            let score = bfs(idx-1)

            if score < minScore {
                minScore = score
                chairman = [String(idx)]
            } else if score == minScore {
                chairman.append(String(idx))
            }
        }

        print("\(minScore) \(chairman.count)\n\(chairman.joined(separator: " "))")

        func bfs(_ person: Int) -> Int {
            var queue = [person]
            var idx = 0
            var visited = Array(repeating: -1, count: people)
            visited[person] = 0

            while idx < queue.count {
                let now = queue[idx]
                idx += 1

                for next in friends[now] where visited[next] == -1 {
                    queue.append(next)
                    visited[next] = visited[now] + 1
                }
            }

            return visited.max()!
        }
    }
}
