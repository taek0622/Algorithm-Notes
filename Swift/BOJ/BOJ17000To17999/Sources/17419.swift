//
//  17419.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/08/12.
//

// 문제: https://www.acmicpc.net/problem/17419

import Shared

public struct BOJ17419: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 91948KB, 시간: 80ms, 코드 길이: 87B
    private func solution1() {
        let _ = readLine()
        print(readLine()!.map { Int(String($0))! }.filter { $0 == 1 }.count)
    }

    // 메모리: 77904KB, 시간: 68ms, 코드 길이: 139B
    private func solution2() {
        let _ = readLine()
        let K = readLine()!.map { Int(String($0))! }
        var count = 0

        for num in K where num == 1 {
            count += 1
        }

        print(count)
    }
}
