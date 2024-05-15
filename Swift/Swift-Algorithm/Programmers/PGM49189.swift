//
//  PGM49189.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 5/15/24.
//

//  문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/49189
//  알고리즘 분류: 그래프

import Foundation

class PGM49189: Solvable {
    func run() {
        print(solution(6, [[3, 6], [4, 3], [3, 2], [1, 3], [1, 2], [2, 4], [5, 2]]))
    }

    func solution(_ n: Int, _ edge: [[Int]]) -> Int {
        var graph = Array(repeating: [Int](), count: n + 1)
        var visited = Array(repeating: false, count: n + 1)
        var distance = 0
        var nodes = [Int]()

        for vertex in edge {
            graph[vertex[0]].append(vertex[1])
            graph[vertex[1]].append(vertex[0])
        }

        var queue = [(1, 0)]
        visited[1] = true
        var idx = 0

        while idx < queue.count {
            let (now, move) = queue[idx]
            idx += 1

            if move == distance {
                nodes.append(now)
            } else if move > distance {
                distance = move
                nodes = [now]
            }

            for next in graph[now] where !visited[next] {
                visited[next] = true
                queue.append((next, move+1))
            }
        }

        return nodes.count
    }
}
