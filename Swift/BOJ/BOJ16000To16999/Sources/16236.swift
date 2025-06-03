//
//  16236.swift
//  BOJ16000To16999
//
//  Created by 김민택 on 6/3/25.
//

//  문제 링크: https://www.acmicpc.net/problem/16236
//  알고리즘 분류: 구현, 그래프 이론, 그래프 탐색, 시뮬레이션, 너비 우선 탐색

import Shared

public struct BOJ16236: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69112KB, 시간: 12ms, 코드 길이: 1604B
        let N = Int(readLine()!)!
        var space = Array(repeating: Array(repeating: 0, count: N), count: N)
        var current = (0, 0)
        var time = 0
        var size = 2
        var eat = 0
        var fishes = 0

        for row in 0..<N {
            space[row] = readLine()!.split(separator: " ").map { Int($0)! }

            for col in 0..<N {
                if space[row][col] == 9 {
                    current = (row, col)
                    space[row][col] = 0
                } else if 1...6 ~= space[row][col] {
                    fishes += 1
                }
            }
        }

        while fishes > 0 {
            var queue = [current]
            var idx = 0
            var path = Array(repeating: Array(repeating: 0, count: N), count: N)
            var eatable = [(Int, Int, Int)]()

            while idx < queue.count {
                let (cr, cc) = queue[idx]
                idx += 1

                for (nr, nc) in [(cr-1, cc), (cr, cc-1), (cr, cc+1), (cr+1, cc)] where 0..<N ~= nr && 0..<N ~= nc && space[nr][nc] <= size && path[nr][nc] == 0 {
                    path[nr][nc] = path[cr][cc] + 1
                    queue.append((nr, nc))

                    if !eatable.isEmpty && path[nr][nc] > eatable.first!.2 {
                        break
                    }

                    if 1..<size ~= space[nr][nc] {
                        eatable.append((nr, nc, path[nr][nc]))
                    }
                }
            }

            if eatable.count == 0 {
                break
            }

            eatable.sort {
                if $0.2 != $1.2 { return $0.2 < $1.2 }
                if $0.0 != $1.0 { return $0.0 < $1.0 }
                return $0.1 < $1.1
            }

            fishes -= 1
            eat += 1
            space[eatable[0].0][eatable[0].1] = 0
            current = (eatable[0].0, eatable[0].1)
            time += eatable[0].2

            if eat == size {
                eat = 0
                size += 1
            }
        }

        print(time)
    }
}
