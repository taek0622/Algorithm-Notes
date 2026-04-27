//
//  1747.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/18.
//

// 문제: https://www.acmicpc.net/problem/1747

import Shared

public struct BOJ1747: Solvable {
    public init() {}

    public func run() {
        // 메모리: 70084KB, 시간: 84ms, 코드 길이: 429B
        let N = Int(readLine()!)!
        var numbers = Array(repeating: true, count: 1003002)
        numbers[0...1] = [false, false]

        for number in 2..<numbers.count where numbers[number] {
            for idx in stride(from: number * number, to: numbers.count, by: number) {
                numbers[idx] = false
            }
        }

        for idx in N..<numbers.count where numbers[idx] {
            if String(idx) == String(String(idx).reversed()) {
                print(idx)
                break
            }
        }
    }
}
