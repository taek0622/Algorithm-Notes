//
//  2986.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/08/09.
//

// 문제: https://www.acmicpc.net/problem/2986

import Foundation

import Shared

public struct BOJ2986: Solvable {
    public init() {}

    public func run() {
        // 메모리: 79508KB, 시간: 12ms, 코드 길이: 337B
        let N = Int(readLine()!)!

        if N % 2 == 0 {
            print(N - N / 2)
        } else {
            var prim = true

            for i in stride(from: 3, through: Int(sqrt(Double(N))), by: 2) {
                if N % i == 0 {
                    print(N - N / i)
                    prim = false
                    break
                }
            }

            if prim {
                print(N - 1)
            }
        }
    }
}
