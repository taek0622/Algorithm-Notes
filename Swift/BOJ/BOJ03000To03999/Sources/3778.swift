//
//  3778.swift
//  BOJ03000To03999
//
//  Created by 김민택 on 10/29/25.
//

//  문제 링크: https://www.acmicpc.net/problem/3613
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ3778: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 180ms, 코드 길이: 471B
        let N = Int(readLine()!)!

        for idx in 1...N {
            var alpha = Array(repeating: 0, count: 26)
            let word1 = readLine()!.map { Int($0.asciiValue!) - 97 }
            let word2 = readLine()!.map { Int($0.asciiValue!) - 97 }
            var count = 0

            for char in word1 {
                alpha[char] += 1
            }

            for char in word2 {
                alpha[char] -= 1
            }

            for c in alpha {
                if c < 0 { count -= c }
                else { count += c }
            }

            print("Case #\(idx): \(count)")
        }
    }
}
