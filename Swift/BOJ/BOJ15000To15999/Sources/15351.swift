//
//  15351.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/30/24.
//

//  문제 링크: https://www.acmicpc.net/problem/15351
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ15351: Solvable {
    public init() {}

    public func run() {
        solution1()
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 305B
    private func solution1() {
        let N = Int(readLine()!)!

        for _ in 0..<N {
            let life = readLine()!
            var totalScore = 0

            for char in life {
                let score = char.asciiValue!

                if 65...90 ~= score {
                    totalScore += Int(score - 64)
                }
            }

            print(totalScore == 100 ? "PERFECT LIFE" : totalScore)
        }
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 192B
    private func solution2() {
        let N = Int(readLine()!)!

        for _ in 0..<N {
            let score = readLine()!.map { Int($0.asciiValue!) - 64 }.filter { 1...26 ~= $0 }.reduce(0, +)
            print(score == 100 ? "PERFECT LIFE" : score)
        }
    }
}
