//
//  10984.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/05/05.
//

// 문제: https://www.acmicpc.net/problem/10984

import Foundation

import Shared

public struct BOJ10984: Solvable {
    // 메모리: 79512KB, 시간: 12ms, 코드 길이: 357B
    public init() {}

    public func run() {
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let N = Int(readLine()!)!
            var credit = 0.0
            var sum = 0.0

            for _ in 0..<N {
                let input = readLine()!.split(separator: " ").map { Double(String($0))! }
                credit += input[0]
                sum += input.reduce(1, *)
            }

            print(Int(credit), round(sum/credit * 10) / 10)
        }
    }
}
