//
//  10434.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/11/25.
//

//  문제 링크: https://www.acmicpc.net/problem/10434
//  알고리즘 분류: 수학, 구현, 정수론, 시뮬레이션, 소수 판정

import Shared

public struct BOJ10434: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 24ms, 코드 길이: 896B
        let P = Int(readLine()!)!

        for _ in 0..<P {
            let input = readLine()!
            let M = input.split(separator: " ").map { Int($0)! }[1]
            var isHappyPrime = M != 1 ? checkPrime(M) : false
            isHappyPrime = isHappyPrime ? checkHappy(M) : isHappyPrime
            print("\(input) \(isHappyPrime ? "YES" : "NO")")
        }

        func checkPrime(_ n: Int) -> Bool {
            var divisor = 2

            while divisor * divisor <= n {
                if n % divisor == 0 {
                    return false
                }

                divisor += 1
            }

            return true
        }

        func checkHappy(_ n: Int) -> Bool {
            var n = n
            var nums: Set<Int> = [n]

            while n != 1 {
                var tmp = n
                var calc = 0

                while tmp > 0 {
                    let current = tmp % 10
                    calc += current * current
                    tmp /= 10
                }

                n = calc

                if !nums.insert(n).inserted {
                    return false
                }
            }

            return true
        }
    }
}
