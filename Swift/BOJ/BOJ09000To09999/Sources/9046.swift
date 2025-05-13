//
//  9046.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/9/24.
//

//  문제 링크: https://www.acmicpc.net/problem/9046
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ9046: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 620B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            var alphabet = Array(repeating: 0, count: 26)
            var eCandidate = [Int]()
            var alphabetMaxCount = -1
            let input = readLine()!

            for char in input where char != " " {
                alphabet[Int(char.asciiValue!) - 97] += 1
            }

            for idx in alphabet.indices {
                if alphabet[idx] > alphabetMaxCount {
                    alphabetMaxCount = alphabet[idx]
                    eCandidate = [idx]
                } else if alphabet[idx] == alphabetMaxCount {
                    eCandidate.append(idx)
                }
            }

            print(eCandidate.count == 1 ? UnicodeScalar(eCandidate[0] + 97)! : "?")
        }
    }
}
