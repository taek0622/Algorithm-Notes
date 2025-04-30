//
//  2576.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/12.
//

// 문제: https://www.acmicpc.net/problem/2576

class BOJ2576: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 263B
        var sum = 0
        var minNumber = 100

        for _ in 0..<7 {
            let number = Int(readLine()!)!

            if number % 2 != 0 {
                sum += number

                if number < minNumber {
                    minNumber = number
                }
            }
        }

        print(sum != 0 ? "\(sum)\n\(minNumber)" : "-1")
    }
}
