//
//  2412.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/16/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2412
//  알고리즘 분류: 자료 구조, 그래프 이론, 그래프 탐색, 너비 우선 탐색, 해시를 사용한 집합과 맵

import Shared

public struct BOJ2412: Solvable {
    public init() {}

    public func run() {
        // 메모리: 79736KB, 시간: 260ms, 코드 길이: 807B
        let nT = readLine()!.split(separator: " ").map { Int($0)! }
        var slots = [[Int]: Bool]()
        var visited = slots
        var count = -1

        for _ in 0..<nT[0] {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            slots[[input[1], input[0]], default: false] = true
        }

        var queue = [(0, 0, 0)]
        var idx = 0
        visited[[0, 0], default: false] = true

        while idx < queue.count {
            let (y, x, move) = queue[idx]
            idx += 1

            if y == nT[1] {
                count = move
                break
            }

            for row in -2...2 {
                for col in -2...2 where 0...nT[1] ~= y+row && 0...1000000 ~= x+col && slots[[y+row, x+col], default: false] && !visited[[y+row, x+col], default: false] {
                    visited[[y+row, x+col], default: false] = true
                    queue.append((y+row, x+col, move+1))
                }
            }
        }

        print(count)
    }
}
