//
//  11558.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/9/25.
//

//  문제 링크: https://www.acmicpc.net/problem/11558
//  알고리즘 분류: 구현, 그래프 이론, 그래프 탐색, 시뮬레이션

import Shared

public struct BOJ11558: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69312KB, 시간: 24ms, 코드 길이: 457B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let N = Int(readLine()!)!
            var nexts = [Int]()
            var cycle = Array(repeating: false, count: N)

            for _ in 0..<N {
                nexts.append(Int(readLine()!)!)
            }

            var idx = 0
            var K = 0

            while !cycle[K] {
                idx += 1

                cycle[K] = true

                K = nexts[K] - 1

                if K + 1 == N {
                    break
                }
            }

            if K + 1 != N {
                idx = 0
            }

            print(idx)
        }
    }
}
