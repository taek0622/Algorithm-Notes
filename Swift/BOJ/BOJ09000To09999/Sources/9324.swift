//
//  9324.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/27/25.
//

//  문제 링크: https://www.acmicpc.net/problem/9324
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ9324: Solvable {
    public init() {}

    public func run() {
        // 메모리: 70420KB, 시간: 264ms, 코드 길이: 613B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let M = readLine()!.map { Int($0.asciiValue!) - 65 }
            var alphabet = Array(repeating: 0, count: 26)
            var idx = 0
            var isFake = false

            while idx < M.count {
                alphabet[M[idx]] += 1

                if alphabet[M[idx]] == 3 {
                    if idx == M.count - 1 {
                        isFake = true
                        break
                    }

                    if M[idx+1] != M[idx] {
                        isFake = true
                        break
                    }

                    alphabet[M[idx]] = 0
                    idx += 1
                }

                idx += 1
            }

            print(isFake ? "FAKE" : "OK")
        }
    }
}
