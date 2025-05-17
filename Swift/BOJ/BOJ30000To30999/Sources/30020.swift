//
//  30020.swift
//  BOJ30000To30999
//
//  Created by 김민택 on 5/17/25.
//

//  문제 링크: https://www.acmicpc.net/problem/30020
//  알고리즘 분류: 수학, 구현, 그리디 알고리즘, 해 구성하기

import Shared

public struct BOJ30020: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 4ms, 코드 길이: 277B
        let AB = readLine()!.split(separator: " ").map { Int($0)! }
        var result = "NO"

        if AB[1]+1...AB[1]*2 ~= AB[0] {
            let count = AB[0] - AB[1]
            result = "YES\n\(count)\(String(repeating: "\naba", count: count))\(String(repeating: "ba", count: AB[1] - count))"
        }

        print(result)
    }
}
