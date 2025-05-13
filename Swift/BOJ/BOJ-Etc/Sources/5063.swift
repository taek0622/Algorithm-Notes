//
//  5063.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/21.
//

// 문제: https://www.acmicpc.net/problem/5063

import Shared

public struct BOJ5063: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 322B
        let N = Int(readLine()!)!

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }

            if input[0] < input[1] - input[2] {
                print("advertise")
            } else if input[0] == input[1] - input[2] {
                print("does not matter")
            } else {
                print("do not advertise")
            }
        }
    }
}
