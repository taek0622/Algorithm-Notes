//
//  10833.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/23.
//

// 문제: https://www.acmicpc.net/problem/10833

import Shared

public struct BOJ10833: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 175B
        let N = Int(readLine()!)!
        var sum = 0

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            sum += input[1] % input[0]
        }

        print(sum)
    }
}
