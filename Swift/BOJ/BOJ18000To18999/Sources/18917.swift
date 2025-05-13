//
//  18917.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/8/25.
//

//  문제 링크: https://www.acmicpc.net/problem/18917
//  알고리즘 분류: 수학, 구현

import Shared

public struct BOJ18917: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 672ms, 코드 길이: 390B
        let M = Int(readLine()!)!
        var sum = 0
        var xor = 0

        for _ in 0..<M {
            let input = readLine()!.split(separator: " ").map { Int($0)! }

            if input[0] == 1 {
                sum += input[1]
                xor ^= input[1]
            } else if input[0] == 2 {
                sum -= input[1]
                xor ^= input[1]
            } else if input[0] == 3 {
                print(sum)
            } else if input[0] == 4 {
                print(xor)
            }
        }
    }
}
