//
//  10809.swift
//  Swift
//
//  Created by 김민택 on 2022/06/07.
//

// 문제: https://www.acmicpc.net/problem/10809

import Shared

public struct BOJ10809: Solvable {
    public init() {}

    public func run() {
        solution1()
    }

    // 메모리: 69096KB, 시간: 8ms, 코드 길이: 193B
    private func solution1() {
        let S = Array(readLine()!)

        let alphabet = Array("abcdefghijklmnopqrstuvwxyz")

        var containS = ""

        for i in alphabet {
            containS += String(S.firstIndex(of: i) ?? -1) + " "
        }

        print(containS)
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 128B
    private func solution2() {
        let S = readLine()!.map { $0.asciiValue! }

        (97...122).map { S.firstIndex(of: $0) ?? -1 }.forEach { print($0, terminator: " ") }
    }
}
