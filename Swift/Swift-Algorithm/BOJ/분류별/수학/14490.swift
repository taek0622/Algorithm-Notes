//
//  14490.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/06/14.
//

// 문제: https://www.acmicpc.net/problem/14490

class BOJ14490: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 373B
        let input = readLine()!.split(separator: ":").map { Int(String($0))! }
        let divisor = generateGCD(input[0], input[1])
        print("\(input[0] / divisor):\(input[1] / divisor)")

        func generateGCD(_ baseNumber: Int, _ targetNumber: Int) -> Int {
            if targetNumber % baseNumber == 0 {
                return baseNumber
            }

            return generateGCD(targetNumber % baseNumber, baseNumber)
        }
    }
}
