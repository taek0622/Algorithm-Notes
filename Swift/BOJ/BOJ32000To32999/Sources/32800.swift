//
//  32800.swift
//  BOJ32000To32999
//
//  Created by 김민택 on 1/24/26.
//

//  문제 링크: https://www.acmicpc.net/problem/32800
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ32800: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 204ms, 코드 길이: 227B
        let n = Int(readLine()!)!
        var (count, maxCount) = (0, 0)

        for _ in 0..<n {
            let ab = readLine()!.split(separator: " ").map { Int($0)! }
            count = count - ab[0] + ab[1]
            maxCount = max(count, maxCount)
        }

        print(maxCount)
    }
}
