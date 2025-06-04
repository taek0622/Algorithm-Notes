//
//  14890.swift
//  BOJ14000To14999
//
//  Created by 김민택 on 6/4/25.
//

//  문제 링크: https://www.acmicpc.net/problem/14890
//  알고리즘 분류: 구현

import Shared

public struct BOJ14890: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 1560B
        let NL = readLine()!.split(separator: " ").map { Int($0)! }
        var map = Array(repeating: Array(repeating: 0, count: NL[0]), count: NL[0])
        var count = 0

        for row in 0..<NL[0] {
            map[row] = readLine()!.split(separator: " ").map { Int($0)! }

            var path = [(map[row][0], 1)]
            var isAvailable = true

            for col in 1..<NL[0] {
                if map[row][col] == path.last!.0 {
                    path[path.count - 1].1 += 1
                } else {
                    path.append((map[row][col], 1))
                }
            }

            for idx in stride(from: 1, to: path.count, by: 1) {
                if (path[idx].0 == path[idx-1].0 + 1 && path[idx-1].1 >= NL[1]) {
                    path[idx-1].1 -= NL[1]
                } else if (path[idx].0 == path[idx-1].0 - 1 && path[idx].1 >= NL[1]) {
                    path[idx].1 -= NL[1]
                } else {
                    isAvailable = false
                }
            }

            if isAvailable {
                count += 1
            }
        }

        for col in 0..<NL[0] {
            var path = [(map[0][col], 1)]
            var isAvailable = true

            for row in 1..<NL[0] {
                if map[row][col] == path.last!.0 {
                    path[path.count - 1].1 += 1
                } else {
                    path.append((map[row][col], 1))
                }
            }

            for idx in stride(from: 1, to: path.count, by: 1) {
                if (path[idx].0 == path[idx-1].0 + 1 && path[idx-1].1 >= NL[1]) {
                    path[idx-1].1 -= NL[1]
                } else if (path[idx].0 == path[idx-1].0 - 1 && path[idx].1 >= NL[1]) {
                    path[idx].1 -= NL[1]
                } else {
                    isAvailable = false
                }
            }

            if isAvailable {
                count += 1
            }
        }

        print(count)
    }
}
