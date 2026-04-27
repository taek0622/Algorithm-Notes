//
//  25304.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2022/12/25.
//

// 문제: https://www.acmicpc.net/problem/8393

import Shared

public struct BOJ25304: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 224B
    private func solution1() {
        let X = Int(readLine()!)!
        let N = Int(readLine()!)!

        var sum = 0

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            sum += (input[0] * input[1])
        }

        print(X == sum ? "Yes" : "No")
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 199B
    private func solution2() {
        let X = Int(readLine()!)!
        let N = Int(readLine()!)!

        var sum = 0

        for _ in 0..<N {
            sum += readLine()!.split(separator: " ").map { Int(String($0))! }.reduce(1, *)
        }

        print(X == sum ? "Yes" : "No")
    }

    // 메모리: 69104KB, 시간: 20ms, 코드 길이: 182B
    private func solution3() {
        var X = Int(readLine()!)!
        let N = Int(readLine()!)!

        for _ in 0..<N {
            X -= readLine()!.split(separator: " ").map { Int(String($0))! }.reduce(1, *)
        }

        print(X == 0 ? "Yes" : "No")
    }
}
