//
//  14924.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/06/05.
//

// 문제: https://www.acmicpc.net/problem/14924

class BOJ14924: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 114B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        print(input[2] / (input[0] * 2) * input[1])
    }
}
