//
//  1699.swift
//  BOJ01000To01999
//
//  Created by 김이안 on 3/20/26.
//

//  문제 링크: https://www.acmicpc.net/problem/1699
//  알고리즘 분류: 수학, 다이나믹 프로그래밍

import Shared

public struct BOJ1699: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69884KB, 시간: 352ms, 코드 길이: 402B
        let N = Int(readLine()!)!
        var numberOfTerms = Array(repeating: 100000, count: N+1)
        var divisor = 1
        numberOfTerms[0] = 0

        while divisor * divisor <= N {
            numberOfTerms[divisor * divisor] = 1
            divisor += 1
        }

        for n in 1...N {
            var num = 1

            while num * num < n {
                numberOfTerms[n] = min(numberOfTerms[n], 1 + numberOfTerms[n - num * num])
                num += 1
            }
        }

        print(numberOfTerms[N])
    }
}
