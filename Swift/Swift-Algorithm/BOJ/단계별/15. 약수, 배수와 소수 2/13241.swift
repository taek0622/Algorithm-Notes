//
//  13241.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/04/05.
//

// 문제: https://www.acmicpc.net/problem/13241

class BOJ13241: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 345B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }

        print(input[0] * input[1] / extractDivisor(input[0], input[1]))

        func extractDivisor(_ baseNumber: Int, _ targetNumber: Int) -> Int {
            if targetNumber % baseNumber == 0 {
                return baseNumber
            }

            return extractDivisor(targetNumber % baseNumber, baseNumber)
        }
    }
}
