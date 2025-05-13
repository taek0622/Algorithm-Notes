//
//  1786.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/25/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1786
//  알고리즘 분류: 문자열, kmp

import Shared

public struct BOJ1786: Solvable {
    public init() {}

    public func run() {
        // 메모리: 115216KB, 시간: 208ms, 코드 길이: 1098B
        let text = Array(readLine()!)
        let pattern = Array(readLine()!)
        let status = configurePattern()
        var patternIdx = 0
        var matchingCount = 0
        var matchingIdx = [Int]()

        for textIdx in 0..<text.count {
            while patternIdx > 0 && text[textIdx] != pattern[patternIdx] {
                patternIdx = status[patternIdx - 1]
            }

            if text[textIdx] == pattern[patternIdx] {
                if patternIdx == pattern.count - 1 {
                    matchingIdx.append(textIdx - pattern.count + 2)
                    matchingCount += 1
                    patternIdx = status[patternIdx]
                } else {
                    patternIdx += 1
                }
            }
        }

        print("\(matchingCount)\n\(matchingIdx.map { String($0) }.joined(separator: " "))")

        func configurePattern() -> [Int] {
            var patternTable = Array(repeating: 0, count: pattern.count)
            var idx = 0

            for status in 1..<pattern.count {
                while idx > 0 && pattern[status] != pattern[idx] {
                    idx = patternTable[idx-1]
                }

                if pattern[status] == pattern[idx] {
                    idx += 1
                    patternTable[status] = idx
                }
            }

            return patternTable
        }
    }
}
