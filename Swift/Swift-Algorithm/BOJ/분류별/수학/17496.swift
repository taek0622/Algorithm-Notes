//
//  17496.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/05/31.
//

// 문제: https://www.acmicpc.net/problem/17496

class BOJ17496: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 125B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        print((input[0] - 1) / input[1] * input[2] * input[3])
    }
}
