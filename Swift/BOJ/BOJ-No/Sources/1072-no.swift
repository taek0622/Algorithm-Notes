//
//  1072.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/18.
//

// 문제: https://www.acmicpc.net/problem/1072

import Shared

public struct BOJ1072: Solvable {
    public init() {}

    public func run() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var X = input[0]
        var Y = input[1]
        let Z = Int(Double(Y) / Double(X) * 100)

        if Z >= 99 {
            print(-1)
        } else {
            while Int(Double(Y) / Double(X) * 100) == Z {
                X += 1
                Y += 1
            }

            print(X - input[0])
        }
    }
}
