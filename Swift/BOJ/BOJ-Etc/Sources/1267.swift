//
//  1267.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/26.
//

// 문제: https://www.acmicpc.net/problem/1267

import Shared

public struct BOJ1267: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 325B
        let N = Int(readLine()!)!
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var (Y, M) = (0, 0)

        for num in input {
            Y += ((num / 30 + 1) * 10)
            M += ((num / 60 + 1) * 15)
        }

        if Y <= M {
            print("Y ", terminator: "")
        }

        if M <= Y {
            print("M \(M)", terminator: "")
        }

        if Y < M {
            print(Y)
        }
    }
}
