//
//  10810.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/27.
//

// 문제: https://www.acmicpc.net/problem/10810

class BOJ10810: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69108KB, 시간: 8ms, 코드 길이: 352B
    private func solution1() {
        let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
        var baskets = Array(repeating: 0, count: NM[0])

        for _ in 0..<NM[1] {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }

            for idx in input[0]...input[1] {
                baskets[idx - 1] = input[2]
            }
        }

        print(baskets.map { String($0) }.joined(separator: " "))
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 342B
    private func solution2() {
        let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
        var baskets = Array(repeating: 0, count: NM[0])

        for _ in 0..<NM[1] {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }

            for idx in input[0]...input[1] {
                baskets[idx - 1] = input[2]
            }
        }

        baskets.forEach { print($0, terminator: " ") }
    }
}
