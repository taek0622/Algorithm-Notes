//
//  3135.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/08/05.
//

// 문제: https://www.acmicpc.net/problem/3135

import Shared

public struct BOJ3135: Solvable {
    public init() {}

    public func run() {
        let AB = readLine()!.split(separator: " ").map { Int(String($0))! }
        let N = Int(readLine()!)!
        var count = abs(AB[0] - AB[1])

        for _ in 0..<N {
            let bookmark = abs(AB[1] - Int(readLine()!)!) + 1
            if count > bookmark {
                count = bookmark
            }
        }

        print(count)
    }
}
