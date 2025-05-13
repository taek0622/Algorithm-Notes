//
//  14395.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/5/24.
//

//  문제 링크: https://www.acmicpc.net/problem/14395
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색

import Shared

public struct BOJ14395: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 708B
        let st = readLine()!.split(separator: " ").map { Int($0)! }

        if st[0] == st[1] {
            print(0)
        } else if st[1] == 1 {
            print("/")
        } else {
            var isFinish = false
            var queue = [(st[0], "")]
            var idx = 0
            var visitied = Set<Int>()
            visitied.insert(st[0])

            while idx < queue.count {
                let (now, op) = queue[idx]
                idx += 1

                if now == st[1] {
                    print(op)
                    isFinish = true
                    break
                }

                for (next, nop) in [(now*now, "*"), (now*2, "+"), (0, "-"), (1, "/")] where -st[0]...1000000000 ~= next && visitied.insert(next).inserted {
                    queue.append((next, op+nop))
                }
            }

            if !isFinish {
                print(-1)
            }
        }
    }
}
