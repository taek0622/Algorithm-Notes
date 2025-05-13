//
//  16433.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/23/24.
//

//  문제 링크: https://www.acmicpc.net/problem/16433
//  알고리즘 분류: 구현

import Shared

public struct BOJ16433: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69244KB, 시간: 8ms, 코드 길이: 561B
        let NRC = readLine()!.split(separator: " ").map { Int($0)! }
        var farm = Array(repeating: Array(repeating: false, count: NRC[0]), count: NRC[0])
        farm[NRC[1] - 1][NRC[2] - 1] = true
        var queue = [(NRC[1] - 1, NRC[2] - 1)]
        var idx = 0

        while idx < queue.count {
            let (r, c) = queue[idx]
            idx += 1

            for (nr, nc) in [(r-1, c-1), (r-1, c+1), (r+1, c-1), (r+1, c+1)] where 0..<NRC[0] ~= nr && 0..<NRC[0] ~= nc && !farm[nr][nc] {
                queue.append((nr, nc))
                farm[nr][nc] = true
            }
        }

        farm.forEach {
            print($0.map { $0 ? "v" : "." }.joined())
        }
    }
}
