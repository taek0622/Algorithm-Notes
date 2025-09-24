//
//  31628.swift
//  BOJ31000To31999
//
//  Created by 김민택 on 9/24/25.
//

//  문제 링크: https://www.acmicpc.net/problem/31628
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ31628: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 370B
        var set = Array(repeating: Set<String>(), count: 10)
        var isOk = false

        for _ in 0..<10 {
            let input = readLine()!.split(separator: " ").map { String($0) }

            if Set(input).count == 1 {
                isOk = true
            }

            for col in 0..<10 {
                set[col].insert(input[col])
            }
        }

        for col in 0..<10 where set[col].count == 1 {
            isOk = true
        }

        print(isOk ? 1 : 0)
    }
}
