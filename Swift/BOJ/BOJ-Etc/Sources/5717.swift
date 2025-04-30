//
//  5717.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/04/09.
//

// 문제: https://www.acmicpc.net/problem/5717

class BOJ5717: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 125B
        while let input = readLine(), input != "0 0" {
            print(input.split(separator: " ").map { Int(String($0))! }.reduce(0, +))
        }
    }
}
