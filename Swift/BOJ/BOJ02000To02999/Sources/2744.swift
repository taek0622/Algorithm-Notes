//
//  2744.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2744
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ2744: Solvable {
    public init() {}

    public func run() {
        solution1()
    }

    // 메모리: 69096KB, 시간: 8ms, 코드 길이: 206B
    private func solution1() {
        let word = String(readLine()!)
        var result = ""

        for char in word {
            let lower = char.lowercased()
            let upper = char.uppercased()

            result += (String(char) == lower ? upper : lower)
        }

        print(result)
    }

    // 메모리: 69100KB, 시간: 12ms, 코드 길이: 103B
    private func solution2() {
        let word = readLine()!.map { $0.isLowercase ? $0.uppercased() : $0.lowercased() }

        print(word.joined())
    }
}
