//
//  3059.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 7/12/24.
//

//  문제 링크: https://www.acmicpc.net/problem/3059
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ3059: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 326B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let sentence = readLine()!
            var dict = Array(repeating: false, count: 26)
            var count = 0

            for char in sentence {
                dict[Int(char.asciiValue!) - 65] = true
            }

            for idx in dict.indices where !dict[idx] {
                count += (idx + 65)
            }

            print(count)
        }
    }
}
