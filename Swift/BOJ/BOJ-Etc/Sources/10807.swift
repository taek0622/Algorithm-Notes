//
//  10807.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2022/12/26.
//

// 문제: https://www.acmicpc.net/problem/10807

import Shared

public struct BOJ10807: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 210B
    private func solution1() {
        let N = Int(readLine()!)!
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        let v = Int(readLine()!)
        var count = 0

        input.forEach {
            if $0 == v {
                count += 1
            }
        }

        print(count)
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 161B
    private func solution2() {
        let N = Int(readLine()!)!
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        let v = Int(readLine()!)!

        print(input.filter { $0 == v }.count)
    }
}
