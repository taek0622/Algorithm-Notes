//
//  12886.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/1/24.
//

//  문제 링크: https://www.acmicpc.net/problem/12886
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색

import Shared

public struct BOJ12886: Solvable {
    public init() {}

    public func run() {
        // 메모리: 82708KB, 시간: 168ms, 코드 길이: 635B
        let ABC = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
        var isSame = false

        var queue = [ABC]
        var idx = 0
        var visited = Set([ABC])

        while idx < queue.count {
            let abc = queue[idx]
            idx += 1

            if abc[0] == abc[1] && abc[1] == abc[2] {
                isSame = true
                break
            }

            for next in [[abc[0] * 2, abc[1] - abc[0], abc[2]], [abc[0] * 2, abc[1], abc[2] - abc[0]], [abc[0], abc[1] * 2, abc[2] - abc[1]]] where next[0] > 0 && next[1] > 0 && next[2] > 0 {
                let rocks = next.sorted()

                if visited.insert(rocks).inserted {
                    queue.append(rocks)
                }
            }
        }

        print(isSame ? 1 : 0)
    }
}
