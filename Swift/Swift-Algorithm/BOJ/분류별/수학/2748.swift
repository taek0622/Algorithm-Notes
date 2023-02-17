//
//  2748.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/17.
//

// 문제: https://www.acmicpc.net/problem/2748

class BOJ2748: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 170B
        let n = Int(readLine()!)!
        var fibonacci = (0, 1)

        if n > 1 {
            for _ in 2...n {
                fibonacci = (fibonacci.1, fibonacci.0 + fibonacci.1)
            }
        }

        print(fibonacci.1)
    }
}
