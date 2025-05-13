//
//  1003.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/01.
//

// 문제: https://www.acmicpc.net/problem/1003

import Shared

public struct BOJ1003: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 412B
        let T = Int(readLine()!)!
        var numbers = [Int]()
        var fibonacci = [(1, 0), (0, 1)]

        for _ in  0..<T {
            numbers.append(Int(readLine()!)!)
        }

        if numbers.max()! >= 2 {
            for idx in 2...numbers.max()! {
                fibonacci.append((fibonacci[idx - 1].0 + fibonacci[idx - 2].0, fibonacci[idx - 1].1 + fibonacci[idx - 2].1))
            }
        }

        for number in numbers {
            print("\(fibonacci[number].0) \(fibonacci[number].1)")
        }
    }
}
