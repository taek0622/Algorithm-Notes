//
//  11382.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/24.
//

// 문제: https://www.acmicpc.net/problem/11382

class BOJ11382: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 101B
        let numbers = readLine()!.split(separator: " ").map { Int(String($0))! }

        print(numbers.reduce(0, +))
    }
}
