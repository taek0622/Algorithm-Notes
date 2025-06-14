//
//  2877.swift
//  BOJ02000To02999
//
//  Created by 김민택 on 6/14/25.
//

//  문제 링크: https://www.acmicpc.net/problem/2877
//  알고리즘 분류: 수학, 구현

import Shared

public struct BOJ2877: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69100KB, 시간: 4ms, 코드 길이: 305B
    private func solution1() {
        var K = Int(readLine()!)!
        var result = ""
        var divisor = 2
        var digit = 1

        while K > divisor {
            K -= divisor
            divisor *= 2
            digit += 1
        }

        for _ in 0..<digit {
            divisor /= 2

            if K > divisor {
                result += "7"
                K -= divisor
            } else {
                result += "4"
            }
        }

        print(result)
    }

    // 메모리: 69100KB, 시간: 4ms, 코드 길이: 89B
    private func solution2() {
        print(String(Int(readLine()!)!+1, radix: 2).map { $0 == "0" ? "4" : "7" }[1...].joined())
    }
}
