//
//  14607.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/08/13.
//

// 문제: https://www.acmicpc.net/problem/14607

class BOJ14607: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69100KB, 시간: 348ms, 코드 길이: 92B
    private func solution1() {
        let N = Int(readLine()!)!
        var pizza = 0

        for idx in 0..<N {
            pizza += idx
        }

        print(pizza)
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 48B
    private func solution2() {
        let N = Int(readLine()!)!
        print(N * (N - 1) / 2)
    }
}
