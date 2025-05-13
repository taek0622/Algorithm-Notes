//
//  1697.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 9/29/23.
//

//  문제 링크: https://www.acmicpc.net/problem/1697
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색

import Shared

public struct BOJ1697: Solvable {
    public init() {}

    public func run() {
        // 메모리: 119896KB, 시간: 64ms, 코드 길이: 653B
        let NK = readLine()!.split(separator: " ").map { Int(String($0))! }

        if NK[0] > NK[1] {
            print(NK[0] - NK[1])
        } else {
            var visited = Array(repeating: false, count: 100001)
            var queue = [(NK[0], 0)]
            var idx = 0

            while idx < queue.count {
                var (current, time) = queue[idx]

                if current == NK[1] {
                    print(time)
                    break
                }

                time += 1
                visited[current] = true

                [(current-1, time), (current+1, time), (current*2, time)].forEach {
                    if 0...100000 ~= $0.0 && !visited[$0.0] {
                        queue.append(($0.0, $0.1))
                    }
                }

                idx += 1
            }
        }
    }
}
