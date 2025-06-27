//
//  34027.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/27/25.
//

//  문제 링크: https://www.acmicpc.net/problem/34027
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ34027: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69896KB, 시간: 12ms, 코드 길이: 199B
        var nums = Set<Int>()

        for divisor in 1...31622 {
            nums.insert(divisor * divisor)
        }

        let T = Int(readLine()!)!

        for _ in 0..<T {
            let N = Int(readLine()!)!
            print(nums.contains(N) ? 1 : 0)
        }
    }
}
