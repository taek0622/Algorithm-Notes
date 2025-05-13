//
//  10103.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/04/20.
//

// 문제: https://www.acmicpc.net/problem/10103

import Shared

public struct BOJ10103: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 294B
        let n = Int(readLine()!)!
        var (chang, sang) = (100, 100)

        for _ in 0..<n {
            let dice = readLine()!.split(separator: " ").map { Int(String($0))! }
            if dice[0] > dice[1] {
                sang -= dice[0]
            } else if dice[1] > dice[0] {
                chang -= dice[1]
            }
        }

        print("\(chang)\n\(sang)")
    }
}
