//
//  1389.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/21/23.
//

//  문제 링크: https://www.acmicpc.net/problem/1389
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색, 최단 경로, 플로이드-워셜

import Shared

public struct BOJ1389: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 28ms, 코드 길이: 804B
        let inf = 10000
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var relations = Array(repeating: Array(repeating: inf, count: NM[0]), count: NM[0])

        for _ in 0..<NM[1] {
            let relation = readLine()!.split(separator: " ").map { Int($0)! - 1 }
            relations[relation[0]][relation[1]] = 1
            relations[relation[1]][relation[0]] = 1
        }

        for idx in 0..<NM[0] {
            relations[idx][idx] = 0
        }

        for path in 0..<NM[0] {
            for start in 0..<NM[0] {
                for dest in 0..<NM[0] {
                    relations[start][dest] = min(relations[start][dest], relations[start][path] + relations[path][dest])
                }
            }
        }

        var kevinBacon = Array(repeating: inf, count: NM[0])

        for row in 0..<NM[0] {
            kevinBacon[row] = relations[row].reduce(0, +)
        }

        print(kevinBacon.firstIndex(of: kevinBacon.min()!)! + 1)
    }
}
