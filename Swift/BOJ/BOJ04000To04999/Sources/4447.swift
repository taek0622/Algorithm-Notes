//
//  4447.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 9/16/24.
//

//  문제 링크: https://www.acmicpc.net/problem/4447
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ4447: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 4ms, 코드 길이: 321B
        let n = Int(readLine()!)!

        for _ in 0..<n {
            let name = readLine()!
            var (g, b) = (0, 0)

            for char in name.lowercased() {
                if char == "g" {
                    g += 1
                } else if char == "b" {
                    b += 1
                }
            }

            print("\(name) is \(g == b ? "NEUTRAL" : g > b ? "GOOD" : "A BADDY" )")
        }
    }
}
