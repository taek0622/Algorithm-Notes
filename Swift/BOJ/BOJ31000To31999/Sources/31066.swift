//
//  31066.swift
//  BOJ31000To31999
//
//  Created by 김민택 on 5/12/25.
//

//  문제 링크: https://www.acmicpc.net/problem/31066
//  알고리즘 분류: 구현, 그리디 알고리즘, 시뮬레이션

import Shared

public struct BOJ31066: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 561B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let NMK = readLine()!.split(separator: " ").map { Int($0)! }

            if NMK[0] != 1 && NMK[1] == 1 && NMK[2] == 1 {
                print(-1)
                continue
            }

            var (a, b, c, d) = (NMK[0], NMK[1], 0, 0)
            var count = 0

            while c < NMK[0] {
                if d == 0 {
                    a -= b * NMK[2]
                    c += b * NMK[2]
                    d += b
                    b = 0
                } else if b == 0 {
                    c -= 1
                    a += 1
                    b += d
                    d = 0
                }

                count += 1
            }

            print(count)
        }
    }
}
