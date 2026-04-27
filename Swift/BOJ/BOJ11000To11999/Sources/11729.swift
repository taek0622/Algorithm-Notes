//
//  11729.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/06.
//

// 문제: https://www.acmicpc.net/problem/11729

import Shared

public struct BOJ11729: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 79544KB, 시간: 320ms, 코드 길이: 375B
    private func solution1() {
        let N = Int(readLine()!)!
        var count = 0
        let result = hanoi(N, 1, 3)

        print("\(count)\n\(result)")

        func hanoi(_ N: Int, _ from: Int, _ to: Int) -> String {
            count += 1

            if N == 1 {
                return "\(from) \(to)"
            }

            var path = ""
            let empty = 6 - from - to

            path += "\(hanoi(N-1, from, empty))\n\(from) \(to)\n\(hanoi(N-1, empty, to))"

            return path
        }
    }

    // 메모리: 78456KB, 시간: 128ms, 코드 길이: 485B
    private func solution2() {
        let N = Int(readLine()!)!
        var hanoi = Hanoi()

        hanoi.move(N, "1", "2", "3")

        print("\(hanoi.count)\n\(hanoi.result)")

        struct Hanoi {
            var count = 0
            var result = ""

            mutating func move(_ N: Int, _ from: String, _ mid: String, _ to: String) {
                count += 1

                if N == 1 {
                    result += "\(from) \(to)\n"
                } else {
                    move(N - 1, from, to, mid)
                    result += "\(from) \(to)\n"
                    move(N - 1, mid, from, to)
                }
            }
        }
    }
}
