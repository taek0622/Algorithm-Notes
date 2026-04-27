//
//  5618.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/06/18.
//

// 문제: https://www.acmicpc.net/problem/5618

import Shared

public struct BOJ5618: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69112KB, 시간: 8ms, 코드 길이: 667B
        let n = Int(readLine()!)!
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var gcd = generateGCD(input[0], input[1])
        var divisors: Set<Int> = [1]

        if n == 3 {
            gcd = generateGCD(gcd, input[2])
        }

        divisors.insert(gcd)

        var divisor = 2

        while divisor * divisor <= gcd {
            if gcd % divisor == 0 {
                divisors.insert(divisor)
                divisors.insert(gcd / divisor)
            }

            divisor += 1
        }

        divisors.sorted().forEach {
            print($0)
        }

        func generateGCD(_ baseNumber: Int, _ targetNumber: Int) -> Int {
            if targetNumber % baseNumber == 0 {
                return baseNumber
            }

            return generateGCD(targetNumber % baseNumber, baseNumber)
        }
    }
}
