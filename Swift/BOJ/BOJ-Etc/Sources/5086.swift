//
//  5086.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/11.
//

// 문제: https://www.acmicpc.net/problem/5086

import Shared

public struct BOJ5086: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 305B
        while true {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }

            if input == [0, 0] {
                break
            }

            if input[0] % input[1] == 0 {
                print("multiple")
            } else if input[1] % input[0] == 0 {
                print("factor")
            } else {
                print("neither")
            }
        }
    }
}
