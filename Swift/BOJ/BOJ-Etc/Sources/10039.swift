//
//  10039.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/30.
//

// 문제: https://www.acmicpc.net/problem/10039

class BOJ10039: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 120B
    private func solution1() {
        var sum = 0

        for _ in 0..<5 {
            let score = Int(readLine()!)!

            sum += (score >= 40 ? score : 40)
        }

        print(sum / 5)
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 85B
    private func solution2() {
        var sum = 0

        for _ in 0..<5 {
            sum += max(Int(readLine()!)!, 40)
        }

        print(sum / 5)
    }
}
