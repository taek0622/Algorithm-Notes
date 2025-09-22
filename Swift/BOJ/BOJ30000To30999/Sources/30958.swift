//
//  30958.swift
//  BOJ30000To30999
//
//  Created by 김민택 on 9/22/25.
//

//  문제 링크: https://www.acmicpc.net/problem/30958
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ30958: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69296KB, 시간: 12ms, 코드 길이: 228B
        _ = readLine()
        let string = readLine()!
        var alpha = Array(repeating: 0, count: 26)

        for char in string {
            let ascii = Int(char.asciiValue!) - 97

            if 0..<26 ~= ascii {
                alpha[ascii] += 1
            }
        }

        print(alpha.max()!)
    }
}
