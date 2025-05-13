//
//  1855.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 9/25/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1855
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ1855: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 4ms, 코드 길이: 479B
        let K = Int(readLine()!)!
        let crypt = readLine()!.map { String($0) }
        var sentence = Array(repeating: Array(repeating: "", count: K), count: (crypt.count - 1) / 3 + 1)
        var result = ""

        for idx in crypt.indices {
            if (idx / K) % 2 == 0 {
                sentence[idx / K][idx % K] = crypt[idx]
            } else {
                sentence[idx / K][K - idx % K - 1] = crypt[idx]
            }
        }

        for col in 0..<K {
            for row in 0..<sentence.count {
                result += sentence[row][col]
            }
        }

        print(result)
    }
}
