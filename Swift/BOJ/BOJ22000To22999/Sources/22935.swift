//
//  22935.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/5/25.
//

//  문제 링크: https://www.acmicpc.net/problem/22935
//  알고리즘 분류: 수학, 구현

import Shared

public struct BOJ22953: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 332B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let N = Int(readLine()!)!
            var bin = N < 16 ? String(N % 16, radix: 2) : String(((N - 16) / 14) % 2 == 0 ? 15 - ((N - 16) % 14 + 1) : (N - 16) % 14 + 2, radix: 2)

            while bin.count < 4 {
                bin = "0" + bin
            }

            print(bin.map { $0 == "1" ? "딸기" : "V" }.joined())
        }
    }
}
