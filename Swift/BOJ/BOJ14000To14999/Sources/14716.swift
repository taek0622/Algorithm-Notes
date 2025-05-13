//
//  14716.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 5/9/24.
//

//  문제 링크: https://www.acmicpc.net/problem/14716
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색, 깊이 우선 탐색

import Shared

public struct BOJ14716: Solvable {
    public init() {}

    public func run() {
        // 메모리: 70776KB, 시간: 24ms, 코드 길이: 826B
        let MN = readLine()!.split(separator: " ").map { Int($0)! }
        var banner = Array(repeating: Array(repeating: false, count: MN[1]), count: MN[0])
        var count = 0

        for row in 0..<MN[0] {
            banner[row] = readLine()!.split(separator: " ").map { $0 == "1" }
        }

        for row in 0..<MN[0] {
            for col in 0..<MN[1] where banner[row][col] {
                count += 1
                banner[row][col] = false
                var queue = [(row, col)]
                var idx = 0

                while idx < queue.count {
                    let (r, c) = queue[idx]
                    idx += 1

                    for (nr, nc) in [(r-1, c-1), (r-1, c), (r-1, c+1), (r, c-1), (r, c+1), (r+1, c-1), (r+1, c), (r+1, c+1)] where 0..<MN[0] ~= nr && 0..<MN[1] ~= nc && banner[nr][nc] {
                        banner[nr][nc] = false
                        queue.append((nr, nc))
                    }
                }
            }
        }

        print(count)
    }
}
