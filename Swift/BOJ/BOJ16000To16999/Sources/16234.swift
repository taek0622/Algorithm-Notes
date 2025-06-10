//
//  16234.swift
//  BOJ16000To16999
//
//  Created by 김민택 on 6/10/25.
//

//  문제 링크: https://www.acmicpc.net/problem/16234
//  알고리즘 분류: 구현, 그래프 이론, 그래프 탐색, 시뮬레이션, 너비 우선 탐색

import Shared

public struct BOJ16234: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69268KB, 시간: 496ms, 코드 길이: 1404B
        let NLR = readLine()!.split(separator: " ").map { Int($0)! }
        var map = Array(repeating: Array(repeating: 0, count: NLR[0]), count: NLR[0])
        var day = 0

        for row in 0..<NLR[0] {
            map[row] = readLine()!.split(separator: " ").map { Int($0)! }
        }

        while true {
            var visited = Array(repeating: Array(repeating: false, count: NLR[0]), count: NLR[0])
            var zeroCount = 0

            for row in 0..<NLR[0] {
                for col in 0..<NLR[0] where !visited[row][col] {
                    var queue = [(row, col)]
                    var idx = 0
                    var sum = map[row][col]
                    visited[row][col] = true

                    while idx < queue.count {
                        let (cr, cc) = queue[idx]
                        idx += 1

                        for (nr, nc) in [(cr-1, cc), (cr, cc-1), (cr, cc+1), (cr+1, cc)] where 0..<NLR[0] ~= nr && 0..<NLR[0] ~= nc && !visited[nr][nc] && (NLR[1]...NLR[2] ~= map[nr][nc]-map[cr][cc] || NLR[1]...NLR[2] ~= map[cr][cc]-map[nr][nc]) {
                            queue.append((nr, nc))
                            visited[nr][nc] = true
                            sum += map[nr][nc]
                        }
                    }

                    queue.forEach { (cr, cc) in
                        map[cr][cc] = sum / queue.count
                    }

                    if queue.count == 1 {
                        zeroCount += 1
                    }
                }
            }

            if zeroCount == NLR[0] * NLR[0] {
                break
            }

            day += 1
        }

        print(day)
    }
}
