//
//  14467.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 7/13/24.
//

//  문제 링크: https://www.acmicpc.net/problem/14467
//  알고리즘 분류: 구현

import Shared

public struct BOJ14467: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 336B
        let N = Int(readLine()!)!
        var cow = Array(repeating: -1, count: 10)
        var count = 0

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { Int($0)! }

            if cow[input[0] - 1] != input[1] {
                if cow[input[0] - 1] != -1 {
                    count += 1
                }

                cow[input[0] - 1] = input[1]
            }
        }

        print(count)
    }
}
