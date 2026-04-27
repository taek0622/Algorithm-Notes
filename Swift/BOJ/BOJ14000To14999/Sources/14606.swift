//
//  14606.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/08/07.
//

// 문제: https://www.acmicpc.net/problem/14606

import Shared

public struct BOJ14606: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 367B
    private func solution1() {
        let N = Int(readLine()!)!
        var joy = Array(repeating: -1, count: 11)
        joy[1...2] = [0, 1]

        print(addJoy(N))

        func addJoy(_ pizza: Int) -> Int {
            var (temp1, temp2) = (0, 0)
            temp1 = pizza / 2
            temp2 = pizza % 2 == 0 ? temp1 : temp1 + 1

            if joy[pizza] == -1 {
                joy[pizza] = temp1 * temp2 + addJoy(temp1) + addJoy(temp2)
            }

            return joy[pizza]
        }
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 185B
    private func solution2() {
        let N = Int(readLine()!)!
        var joy = [0, 1]

        if 1...2 ~= N {
            print(joy[N-1])
        } else {
            for number in 3...N {
                joy = [joy[1], joy[1] + number - 1]
            }

            print(joy[1])
        }
    }
}
