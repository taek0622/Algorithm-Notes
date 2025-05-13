//
//  1812.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/08/10.
//

// 문제: https://www.acmicpc.net/problem/1812

import Shared

public struct BOJ1812: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 12ms, 코드 길이: 288B
        let N = Int(readLine()!)!
        var candy = 0
        var sum = [Int]()

        for idx in 0..<N {
            let candies = Int(readLine()!)!
            sum.append(candies)
            candy = (idx) % 2 == 0 ? candy + candies : candy - candies
        }

        candy /= 2

        for idx in sum.indices {
            print(candy)
            candy = sum[idx] - candy
        }
    }
}
