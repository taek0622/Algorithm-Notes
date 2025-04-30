//
//  9295.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/05/16.
//

// 문제: https://www.acmicpc.net/problem/9295

class BOJ9295: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 12ms, 코드 길이: 146B
        let T = Int(readLine()!)!

        for idx in 1...T {
            print("Case \(idx):", readLine()!.split(separator: " ").map { Int(String($0))! }.reduce(0, +))
        }
    }
}
