//
//  11654.swift
//  Swift
//
//  Created by 김민택 on 2022/06/05.
//

// 문제: https://www.acmicpc.net/problem/11654

import Shared

public struct BOJ11654: Solvable {
    public init() {}

    public func run() {
        solution3()
    }

    // 메모리: 69096KB, 시간: 8ms, 코드 길이: 45B
    private func solution1() {
        print(Int(UnicodeScalar(readLine()!)!.value))
    }

    // 메모리: 69096KB, 시간: 12ms, 코드 길이: 83B
    private func solution2() {
        let input = readLine()!

        let ascii = Int(UnicodeScalar(input)!.value)

        print(ascii)
    }

    // 메모리: 69096KB, 시간: 8ms, 코드 길이: 37B
    private func solution3() {
        print(readLine()!.first!.asciiValue!)
    }
}
