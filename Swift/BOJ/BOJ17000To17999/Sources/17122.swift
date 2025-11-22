//
//  17122.swift
//  BOJ17000To17999
//
//  Created by 김민택 on 11/22/25.
//

//  문제 링크: https://www.acmicpc.net/problem/17122
//  알고리즘 분류: 수학, 구현

import Shared

public struct BOJ17122: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 4ms, 코드 길이: 320B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let input = readLine()!.split(separator: " ").map { String($0) }
            let way1 = Int(String(input[0].last!))! % 2 == (Int(input[0].first!.asciiValue!) - 64) % 2
            let way2 = ((Int(input[1])! - 1) / 8 + 1) % 2 == Int(input[1])! % 2
            print(way1 == way2 ? "YES" : "NO")
        }
    }
}
