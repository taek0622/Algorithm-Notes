//
//  9251.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/15/24.
//

//  문제 링크: https://www.acmicpc.net/problem/9251
//  알고리즘 분류: 다이나믹 프로그래밍, 문자열

import Shared

public struct BOJ9251: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 76984KB, 시간: 44ms, 코드 길이: 495B
    private func solution1() {
        let string1 = readLine()!.map { String($0) }
        let string2 = readLine()!.map { String($0) }
        var LCS = Array(repeating: Array(repeating: 0, count: string2.count + 1), count: string1.count + 1)

        for row in 1...string1.count {
            for col in 1...string2.count {
                if string1[row-1] == string2[col-1] {
                    LCS[row][col] = LCS[row-1][col-1] + 1
                } else {
                    LCS[row][col] = max(LCS[row-1][col], LCS[row][col-1])
                }
            }
        }

        print(LCS[string1.count][string2.count])
    }

    // 메모리: 69100KB, 시간: 16ms, 코드 길이: 405B
    private func solution2() {
        let string1 = readLine()!.map { String($0) }
        let string2 = readLine()!.map { String($0) }
        var LCS = Array(repeating: 0, count: string1.count)

        for ch2 in 0..<string2.count {
            var count = 0

            for ch1 in 0..<string1.count {
                if count < LCS[ch1] {
                    count = LCS[ch1]
                } else if string2[ch2] == string1[ch1] {
                    LCS[ch1] = count + 1
                }
            }
        }

        print(LCS.max()!)
    }
}
