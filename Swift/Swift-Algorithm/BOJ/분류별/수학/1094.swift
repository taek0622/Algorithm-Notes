//
//  1094.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/10.
//

// 문제: https://www.acmicpc.net/problem/1094

class BOJ1094: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 160B
    private func solution1() {
        let sticks = String(Int(readLine()!)!, radix: 2)
        var count = 0

        for idx in sticks.indices {
            if sticks[idx] == "1" {
                count += 1
            }
        }

        print(count)
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 69B
    private func solution2() {
        print(String(Int(readLine()!)!, radix: 2).filter { $0 == "1" }.count)
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 122B
    private func solution3() {
        var number = Int(readLine()!)!
        var count = 0

        while number > 0 {
            number &= (number - 1)
            count += 1
        }

        print(count)
    }
}
