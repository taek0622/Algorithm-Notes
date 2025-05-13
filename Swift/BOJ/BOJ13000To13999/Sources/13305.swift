//
//  13305.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/10/23.
//

//  문제 링크: https://www.acmicpc.net/problem/13305
//  알고리즘 분류: 그리디 알고리즘

import Shared

public struct BOJ13305: Solvable {
    public init() {}

    public func run() {
        // 메모리: 79612KB, 시간: 88ms, 코드 길이: 361B
        let N = Int(readLine()!)!
        let distance = readLine()!.split(separator: " ").map { Int($0)! }
        let price = readLine()!.split(separator: " ").map { Int($0)! }
        var bestPrice = price[0]
        var total = price[0] * distance[0]

        for idx in 1..<N-1 {
            if price[idx] < bestPrice {
                bestPrice = price[idx]
            }

            total += bestPrice * distance[idx]
        }

        print(total)
    }
}
