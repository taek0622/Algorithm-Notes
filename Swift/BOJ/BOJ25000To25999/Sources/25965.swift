//
//  25965.swift
//  BOJ25000To25999
//
//  Created by 김민택 on 10/4/25.
//

//  문제 링크: https://www.acmicpc.net/problem/25965
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ25965: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 12ms, 코드 길이: 471B
        let N = Int(readLine()!)!

        for _ in 0..<N {
            let M = Int(readLine()!)!
            var KDA = Array(repeating: Array(repeating: 0, count: 3), count: M)
            var price = 0

            for idx in 0..<M {
                KDA[idx] = readLine()!.split(separator: " ").map { Int($0)! }
            }

            let kda = readLine()!.split(separator: " ").map { Int($0)! }

            for idx in 0..<M {
                price += max(KDA[idx][0] * kda[0] - KDA[idx][1] * kda[1] + KDA[idx][2] * kda[2], 0)
            }

            print(price)
        }
    }
}
