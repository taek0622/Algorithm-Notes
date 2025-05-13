//
//  1009.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/08.
//

// 문제: https://www.acmicpc.net/problem/1009

import Shared

public struct BOJ1009: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 12ms, 코드 길이: 516B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            let modNum = input[0] % 10
            var modules = [modNum]

            for idx in 1..<input[1] {
                let newNumber = (modules[idx - 1] * modNum) % 10

                if modules.contains(newNumber) {
                    break
                }

                modules.append(newNumber)
            }

            modules.insert(modules.popLast()!, at: 0)

            print(modules[input[1] % modules.count] == 0 ? 10 : modules[input[1] % modules.count])
        }
    }
}
