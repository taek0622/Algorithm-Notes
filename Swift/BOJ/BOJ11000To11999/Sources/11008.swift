//
//  11008.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/3/25.
//

//  문제 링크: https://www.acmicpc.net/problem/11008
//  알고리즘 분류: 구현, 문자열

import Foundation

import Shared

public struct BOJ11008: Solvable {
    public init() {}

    public func run() {
        solution1()
    }

    // 메모리: 79512KB, 시간: 28ms, 코드 길이: 196B
    private func solution1() {
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let sp = readLine()!.split(separator: " ").map { String($0) }
            print(sp[0].replacingOccurrences(of: sp[1], with: " ").count)
        }
    }

    // 메모리: 69284KB, 시간: 36ms, 코드 길이: 413B
    private func solution2() {
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let sp = readLine()!.split(separator: " ").map { String($0) }
            let (s, p) = (Array(sp[0]), Array(sp[1]))
            var idx = 0
            var count = 0

            while idx < s.count {
                count += 1

                if idx < s.count - p.count + 1 && s[idx..<idx+p.count] == p[0...] {
                    idx += p.count
                } else {
                    idx += 1
                }
            }

            print(count)
        }
    }
}
