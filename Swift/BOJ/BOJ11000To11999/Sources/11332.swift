//
//  11332.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/15/25.
//

//  문제 링크: https://www.acmicpc.net/problem/11332
//  알고리즘 분류: 구현, 많은 조건 분기

import Shared

public struct BOJ11332: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 4ms, 코드 길이: 1150B
        let C = Int(readLine()!)!

        for _ in 0..<C {
            let input = readLine()!.split(separator: " ").map { String($0) }
            let (S, N, T, L) = (input[0], Int(input[1])!, Int(input[2])!, Int(input[3])! * 100000000)
            var isPass = true

            if S == "O(N)" && N * T > L {
                isPass = false
            } else if S == "O(N^2)" && (N > 35000 || N * N * T > L) {
                isPass = false
            } else if S == "O(N^3)" && (N > 1000 || N * N * N * T > L) {
                isPass = false
            } else if S == "O(2^N)" {
                if N >= 30 {
                    isPass = false
                } else {
                    var num = T

                    for _ in 0..<N {
                        num *= 2

                        if num > L {
                            isPass = false
                            break
                        }
                    }
                }
            } else if S == "O(N!)" {
                if N > 12 {
                    isPass = false
                } else {
                    var num = T

                    for mul in stride(from: N, to: 0, by: -1) {
                        num *= mul

                        if num > L {
                            isPass = false
                            break
                        }
                    }
                }
            }

            print(isPass ? "May Pass." : "TLE!")
        }
    }
}
