//
//  11943.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/04/27.
//

// 문제: https://www.acmicpc.net/problem/11943

class BOJ11943: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 207B
        let basket1 = readLine()!.split(separator: " ").map { Int(String($0))! }
        let basket2 = readLine()!.split(separator: " ").map { Int(String($0))! }

        print(min(basket1[0] + basket2[1], basket1[1] + basket2[0]))
    }
}
