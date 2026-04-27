//
//  2738.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/02.
//

// 문제: https://www.acmicpc.net/problem/2738

import Shared

public struct BOJ2738: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69268, 시간: 16ms, 코드 길이: 512B
        let size = readLine()!.split(separator: " ").map { Int(String($0))! }
        let N = size[0]
        let M = size[1]

        var metrix = Array(repeating: Array(repeating: 0, count: M), count: N)

        for line in 0..<N*2 {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }

            for element in 0..<M {
                metrix[line % N][element] += input[element]
            }
        }

        var result = ""

        for line in 0..<N {
            for element in 0..<M {
                result += "\(metrix[line][element]) "
            }
            result += "\n"
        }

        print(result)
    }
}
