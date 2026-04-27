//
//  14425.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/08.
//

// 문제: https://www.acmicpc.net/problem/14425

import Shared

public struct BOJ14425: Solvable {
    public init() {}

    public func run() {
        // 메모리: 74956KB, 시간: 148ms, 코드 길이: 258B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var S = Set<String>()
        var count = 0

        for _ in 0..<input[0] {
            S.insert(readLine()!)
        }

        for _ in 0..<input[1] {
            if S.contains(readLine()!) {
                count += 1
            }
        }

        print(count)
    }
}
