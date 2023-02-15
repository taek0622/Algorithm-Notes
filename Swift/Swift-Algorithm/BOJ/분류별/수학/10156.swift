//
//  10156.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/14.
//

// 문제: https://www.acmicpc.net/problem/10156

class BOJ10156: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 117B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }

        print(max(input[0] * input[1] - input[2], 0))
    }
}
