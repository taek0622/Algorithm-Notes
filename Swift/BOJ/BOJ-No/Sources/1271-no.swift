//
//  1271.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/10.
//

// 문제: https://www.acmicpc.net/problem/1271

import Shared

public struct BOJ1271: Solvable {
    public init() {}

    public func run() {
        let input = readLine()!.split(separator: " ").map { String($0) }
        var n = Array(input[0]).map { Int(String($0))! }
        let m = Array(repeating: 0, count: n.count - input[1].count) + Array(input[1]).map { Int(String($0))! }
        var result = Array(repeating: 0, count: n.count)
        var remain = ""

        while true {
            for idx in stride(from: n.count - 1, through: 0, by: -1) {
                if n[idx] - m[idx] >= 0 {
                    n[idx] -= m[idx]
                } else {
                    n[idx] = 10 - m[idx] + n[idx]
                    n[idx - 1] -= 1
                }
            }

            result[0] += 1

            for idx in result.indices {
                if result[idx] > 9 {
                    result[idx + 1] += result[idx] / 10
                    result[idx] %= 10
                }
            }

            remain = n.map { String($0) }.joined()

            while remain.first == "0" && remain.count != 1 {
                remain.removeFirst()
            }

            if (remain.count == input[1].count && remain.first! < input[1].first!) || remain.count < input[1].count {
                break
            }
        }

        result.reverse()

        while result.first == 0 && result.count != 1 {
            result.removeFirst()
        }

        print("\(result.map { String($0) }.joined())\n\(remain)")
    }
}
