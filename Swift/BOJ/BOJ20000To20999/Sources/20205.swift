//
//  20205.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/8/24.
//

//  문제 링크: https://www.acmicpc.net/problem/20205
//  알고리즘 분류: 구현

import Shared

public struct BOJ20205: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 371B
        let NK = readLine()!.split(separator: " ").map { Int($0)! }
        var result = ""

        for _ in 0..<NK[0] {
            let pixels = readLine()!.split(separator: " ").map { String($0) }
            var row = ""

            for pixel in pixels {
                row += String(repeating: pixel + " ", count: NK[1])
            }

            for _ in 0..<NK[1] {
                result += row
                result += "\n"
            }
        }

        print(result)
    }
}
