//
//  3213.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/08/20.
//

// 문제: https://www.acmicpc.net/problem/3213

import Shared

public struct BOJ3213: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 12ms, 코드 길이: 770B
        let N = Int(readLine()!)!
        var pizza = 0
        var slices = (0, 0, 0)

        for _ in 0..<N {
            switch readLine() {
            case "1/4":
                slices.0 += 1
            case "1/2":
                slices.1 += 1
            case "3/4":
                slices.2 += 1
            default:
                break
            }
        }

        pizza += slices.1 / 2
        slices.1 -= pizza * 2

        var sum = min(slices.0, slices.2)
        pizza += sum
        slices.0 -= sum
        slices.2 -= sum

        sum = min(slices.0 / 2, slices.1)
        pizza += sum
        slices.0 -= sum * 2
        slices.1 -= sum

        sum = min(slices.0, slices.1)
        pizza += sum
        slices.0 -= sum
        slices.2 -= sum

        sum = slices.0 / 4
        pizza += sum
        slices.0 -= sum * 4

        sum = slices.0 / 3
        pizza += sum
        slices.0 -= sum * 3

        sum = slices.0 / 2
        pizza += sum
        slices.0 -= sum * 2

        pizza += (slices.0 + slices.1 + slices.2)

        print(pizza)
    }
}
