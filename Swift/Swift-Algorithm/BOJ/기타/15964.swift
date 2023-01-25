//
//  15964.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/25.
//

// 문제: https://www.acmicpc.net/problem/15964

class BOJ15964: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 124B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }

        print((input[0] + input[1]) * (input[0] - input[1]))
    }
}
