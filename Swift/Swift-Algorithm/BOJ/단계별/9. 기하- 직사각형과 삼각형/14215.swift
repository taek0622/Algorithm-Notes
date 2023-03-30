//
//  14215.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/30.
//

// 문제: https://www.acmicpc.net/problem/14215

class BOJ14215: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69108KB, 시간: 8ms, 코드 길이: 223B
    private func solution1() {
        let sticks = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
        let baseLength = sticks[0] + sticks[1]

        if baseLength > sticks[2] {
            print(baseLength + sticks[2])
        } else {
            print(baseLength * 2 - 1)
        }
    }

    // 메모리: 69108KB, 시간: 8ms, 코드 길이: 193B
    private func solution2() {
        var sticks = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()

        if sticks[0] + sticks[1] <= sticks[2] {
            sticks[2] = sticks[0] + sticks[1] - 1
        }

        print(sticks.reduce(0, +))
    }
}
