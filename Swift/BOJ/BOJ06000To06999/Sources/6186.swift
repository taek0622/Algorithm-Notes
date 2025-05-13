//
//  6186.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/26/25.
//

//  문제 링크: https://www.acmicpc.net/problem/6186
//  알고리즘 분류: 구현, 그래프 이론, 그래프 탐색, 너비 우선 탐색

import Shared

public struct BOJ6186: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 773B
        let RC = readLine()!.split(separator: " ").map { Int($0)! }
        var pasture = Array(repeating: Array(repeating: false, count: RC[1]), count: RC[0])
        var count = 0

        for row in 0..<RC[0] {
            pasture[row] = readLine()!.map { $0 == "#" }
        }

        for row in 0..<RC[0] {
            for col in 0..<RC[1] where pasture[row][col] {
                var queue = [(row, col)]
                var idx = 0
                pasture[row][col] = false
                count += 1

                while idx < queue.count {
                    let (cr, cc) = queue[idx]

                    for (nr, nc) in [(cr-1, cc), (cr, cc-1), (cr, cc+1), (cr+1, cc)] where 0..<RC[0] ~= nr && 0..<RC[1] ~= nc && pasture[nr][nc] {
                        pasture[nr][nc] = false
                        queue.append((nr, nc))
                    }

                    idx += 1
                }
            }
        }

        print(count)
    }
}
