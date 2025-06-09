//
//  1668.swift
//  BOJ01000To01999
//
//  Created by 김민택 on 6/9/25.
//

//  문제 링크: https://www.acmicpc.net/problem/1668
//  알고리즘 분류: 구현

import Shared

public struct BOJ1668: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 421B
        let N = Int(readLine()!)!
        var trophy = Array(repeating: 0, count: N)

        var (num, count) = (0, 0)

        for idx in 0..<N {
            trophy[idx] = Int(readLine()!)!

            if trophy[idx] > num {
                (num, count) = (trophy[idx], count + 1)
            }
        }

        print(count)

        (num, count) = (0, 0)

        for idx in stride(from: N-1, through: 0, by: -1) {
            if trophy[idx] > num {
                (num, count) = (trophy[idx], count + 1)
            }
        }

        print(count)
    }
}
