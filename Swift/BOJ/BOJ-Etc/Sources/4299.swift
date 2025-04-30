//
//  4299.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/05/23.
//

// 문제: https://www.acmicpc.net/problem/4299

class BOJ4299: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 238B
    private func solution1() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        let a = (input[0] + input[1]) / 2
        let b = (input[0] - input[1]) / 2

        if a >= 0, b >= 0, input[0] == a + b, input[1] == a - b {
            print(a, b)
        } else {
            print(-1)
        }
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 219B
    private func solution2() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }

        if input[0] < input[1] || (input[0] + input[1]) % 2 != 0 {
            print(-1)
        } else {
            print((input[0] + input[1]) / 2, (input[0] - input[1]) / 2)
        }
    }
}
