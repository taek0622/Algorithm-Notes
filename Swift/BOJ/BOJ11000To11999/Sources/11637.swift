//
//  11637.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/25/25.
//

//  문제 링크: https://www.acmicpc.net/problem/11637
//  알고리즘 분류: 구현

import Shared

public struct BOJ11637: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 488B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let n = Int(readLine()!)!
            var votes = Array(repeating: (0, 0), count: n)
            var total = 0

            for idx in 0..<n {
                let num = Int(readLine()!)!
                total += num
                votes[idx] = (idx, num)
            }

            votes.sort { $0.1 > $1.1 }

            if votes[0].1 == votes[1].1 {
                print("no winner")
            } else {
                print("\(Double(votes[0].1) / Double(total) > 0.5 ? "majority" : "minority") winner \(votes[0].0 + 1)")
            }
        }
    }
}
