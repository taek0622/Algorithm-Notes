//
//  2914.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/11.
//

// 문제: https://www.acmicpc.net/problem/2914

class BOJ2914: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 108B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }

        print(input[0] * (input[1] - 1) + 1)
    }
}
