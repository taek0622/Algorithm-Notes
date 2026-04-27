//
//  2981.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/12.
//

// 문제: https://www.acmicpc.net/problem/2981

import Shared

public struct BOJ2981: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69112KB, 시간: 12ms, 코드 길이: 770B
    private func solution1() {
        let N = Int(readLine()!)!
        var numbers = [Int]()
        var divisors = [Int]()
        var result = Set<Int>()

        for _ in 0..<N {
            numbers.append(Int(readLine()!)!)
        }

        numbers.sort()

        for idx in 1..<numbers.count {
            divisors.append(numbers[idx] - numbers[idx - 1])
        }

        var gcd = divisors[0]

        for idx in 1..<divisors.count {
            gcd = findGCD(gcd, divisors[idx])
        }

        var divisor = 1

        while divisor * divisor <= gcd {
            if gcd % divisor == 0 {
                result.insert(divisor)
                result.insert(gcd / divisor)
            }

            divisor += 1
        }

        result.remove(1)

        print(result.sorted().map { String($0) }.joined(separator: " "))

        func findGCD(_ num1: Int, _ num2: Int) -> Int {
            let modulo = num2 % num1

            if modulo != 0 {
                return findGCD(modulo, num1)
            }

            return num1
        }
    }

    // 메모리: 69112KB, 시간: 12ms, 코드 길이: 697B
    private func solution2() {
        let N = Int(readLine()!)!
        var numbers = [Int]()
        var divisors = Set<Int>()

        for _ in 0..<N {
            numbers.append(Int(readLine()!)!)
        }

        numbers.sort()

        var gcd = numbers[1] - numbers[0]

        for idx in 1..<numbers.count {
            gcd = findGCD(gcd, numbers[idx] - numbers[idx-1])
        }

        var divisor = 1

        while divisor * divisor <= gcd {
            if gcd % divisor == 0 {
                divisors.insert(divisor)
                divisors.insert(gcd / divisor)
            }

            divisor += 1
        }

        divisors.remove(1)

        print(divisors.sorted().map { String($0) }.joined(separator: " "))

        func findGCD(_ num1: Int, _ num2: Int) -> Int {
            let modulo = num2 % num1

            if modulo != 0 {
                return findGCD(modulo, num1)
            }

            return num1
        }
    }
}
