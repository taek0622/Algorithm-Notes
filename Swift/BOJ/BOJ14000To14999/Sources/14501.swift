//
//  14501.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/9/23.
//

//  문제 링크: https://www.acmicpc.net/problem/14501
//  알고리즘 분류: 다이나믹 프로그래밍, 브루트포스 알고리즘

import Shared

public struct BOJ14501: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 431B
        let N = Int(readLine()!)!
        var plan = [(0, 0)]

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            plan.append((input[0], input[1]))
        }

        for idx in stride(from: N, through: 0, by: -1) {
            if plan[idx].0 + idx > N+1 {
                plan[idx].1 = 0
            } else if plan[idx].0 + idx < N+1 {
                plan[idx].1 += plan[(plan[idx].0 + idx)...].max(by: { $0.1 < $1.1 })!.1
            }
        }

        print(plan[0].1)
    }
}
