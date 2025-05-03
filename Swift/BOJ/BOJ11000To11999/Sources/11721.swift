//
//  11721.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/15/24.
//

//  문제 링크: https://www.acmicpc.net/problem/11718
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ11721: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69096KB, 시간: 8ms, 코드 길이: 228B
    private func solution1() {
        let input = readLine()!.map { String($0) }

        for idx in stride(from: 0, to: input.count, by: 10) {
            if idx+9 < input.count {
                print(input[idx...idx+9].joined())
            } else {
                print(input[idx...].joined())
            }
        }
    }

    // 메모리: 69096KB, 시간: 8ms, 코드 길이: 106B
    private func solution2() {
        print(readLine()!.enumerated().map { $0.offset % 10 == 9 ? "\($0.element)\n" : "\($0.element)" }.joined())
    }
}
