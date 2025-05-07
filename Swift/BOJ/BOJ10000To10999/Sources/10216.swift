//
//  10216.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/21/24.
//

//  문제 링크: https://www.acmicpc.net/problem/10216
//  알고리즘 분류: 자료 구조, 그래프 이론, 그래프 탐색, 기하학, 분리 집합

import Shared

public struct BOJ10216: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69316KB, 시간: 3828ms, 코드 길이: 997B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let N = Int(readLine()!)!
            var areas = [(Int, Int, Int)]()
            var count = 0
            var visited = Array(repeating: false, count: N)

            for _ in 0..<N {
                let xyR = readLine()!.split(separator: " ").map { Int($0)! }
                areas.append((xyR[0], xyR[1], xyR[2]))
            }

            for idx in 0..<N where !visited[idx] {
                dfs(idx)
                count += 1
            }

            print(count)

            func dfs(_ idx1: Int) {
                for idx2 in 0..<N {
                    if idx1 == idx2 || visited[idx2] {
                        continue
                    }

                    if calculateDistance(areas[idx1], areas[idx2]) > (areas[idx1].2 + areas[idx2].2) * (areas[idx1].2 + areas[idx2].2) {
                        continue
                    }

                    visited[idx2] = true
                    dfs(idx2)
                }
            }
        }

        func calculateDistance(_ area1: (Int, Int, Int), _ area2: (Int, Int, Int)) -> Int {
            return (area1.0 - area2.0) * (area1.0 - area2.0) + (area1.1 - area2.1) * (area1.1 - area2.1)
        }
    }
}
