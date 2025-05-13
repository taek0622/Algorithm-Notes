//
//  9037.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/10/25.
//

//  문제 링크: https://www.acmicpc.net/problem/9037
//  알고리즘 분류: 구현, 시뮬레이션

import Shared

public struct BOJ9037: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 590B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let N = Int(readLine()!)!
            var C = readLine()!.split(separator: " ").map { Int($0)! }
            var count = 0

            for idx in 0..<N where C[idx] % 2 != 0 {
                C[idx] += 1
            }

            while Set(C).count != 1 {
                var temp = Array(repeating: 0, count: N)

                for idx in 0..<N {
                    temp[idx] = C[idx] / 2
                }

                for idx in 0..<N {
                    C[idx] = temp[idx] + temp[(idx+1) % N]

                    if C[idx] % 2 != 0 {
                        C[idx] += 1
                    }
                }

                count += 1
            }

            print(count)
        }
    }
}
