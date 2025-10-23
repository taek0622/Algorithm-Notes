//
//  33990.swift
//  BOJ33000To33999
//
//  Created by 김민택 on 10/23/25.
//

//  문제 링크: https://www.acmicpc.net/problem/33990
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ33990: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 4ms, 코드 길이: 216B
        let N = Int(readLine()!)!
        var rm = 601

        for _ in 0..<N {
            let ABC = readLine()!.split(separator: " ").map { Int($0)! }.reduce(0, +)

            if ABC >= 512 {
                rm = min(rm, ABC)
            }
        }

        print(rm > 600 ? -1 : rm)
    }
}
