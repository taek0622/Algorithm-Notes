//
//  26849.swift
//  BOJ26000To26999
//
//  Created by 김민택 on 1/20/26.
//

//  문제 링크: https://www.acmicpc.net/problem/26849
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ26849: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 140ms, 코드 길이: 281B
        let N = Int(readLine()!)!
        var (mini, maxi, sum) = (2000000000.0, 0.0, 0.0)

        for _ in 0..<N {
            let ab = readLine()!.split(separator: " ").map { Double($0)! }
            let res = ab[0] / ab[1]

            mini = min(mini, res)
            maxi = max(maxi, res)
            sum += res
        }

        print(mini, maxi, sum)
    }
}
