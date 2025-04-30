//
//  2004.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/07/19.
//

// 문제: https://www.acmicpc.net/problem/2004

class BOJ2004: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 559B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        let (n, m) = (input[0], input[1])
        let counter2 = countDivisor(n, 2) - (countDivisor(m, 2) + countDivisor(n - m, 2))
        let counter5 = countDivisor(n, 5) - (countDivisor(m, 5) + countDivisor(n - m, 5))

        print(min(counter2, counter5))

        func countDivisor(_ targetNumber: Int, _ divisorNumber: Int) -> Int {
            var count = 0
            var divisor = divisorNumber

            while targetNumber >= divisor {
                count += (targetNumber / divisor)
                divisor *= divisorNumber
            }

            return count
        }
    }
}
