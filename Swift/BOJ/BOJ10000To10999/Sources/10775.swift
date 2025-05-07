//
//  10775.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/6/24.
//

//  문제 링크: https://www.acmicpc.net/problem/10775
//  알고리즘 분류: 자료 구조, 그리디 알고리즘, 분리 집합

import Shared

public struct BOJ10775: Solvable {
    public init() {}

    public func run() {
        // 메모리: 74448KB, 시간: 64ms, 코드 길이: 390B
        let G = Int(readLine()!)!
        let P = Int(readLine()!)!
        var gates = Array(0...G)
        var count = 0

        for _ in 0..<P {
            let gate = find(Int(readLine()!)!)

            if gate == 0 {
                break
            }

            gates[gate] -= 1
            count += 1
        }

        print(count)

        func find(_ gate: Int) -> Int {
            if gates[gate] == gate {
                return gate
            }

            gates[gate] = find(gates[gate])
            return gates[gate]
        }
    }
}
