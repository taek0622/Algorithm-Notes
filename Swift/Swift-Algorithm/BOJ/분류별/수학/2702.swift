//
//  2702.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/05/30.
//

// 문제: https://www.acmicpc.net/problem/2702

class BOJ2702: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 12ms, 코드 길이: 414B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            let gcd = generateGCD(input[0], input[1])
            print(input[0] * input[1] / gcd, gcd)
        }

        func generateGCD(_ baseNumber: Int, _ targetNumber: Int) -> Int {
            if targetNumber % baseNumber == 0 {
                return baseNumber
            }

            return generateGCD(targetNumber, baseNumber % targetNumber)
        }
    }
}
