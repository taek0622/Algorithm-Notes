//
//  11653.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2022/12/31.
//

// 문제: https://www.acmicpc.net/problem/11653

import Foundation

import Shared

public struct BOJ11653: Solvable {
    public init() {}

    public func run() {
        solution4()
    }

    // 메모리: 69100KB, 시간: 56ms, 코드 길이: 234B
    private func solution1() {
        var N = Int(readLine()!)!
        var divisor = 2
        var numbers = [Int]()

        while N > 1 {
            if N % divisor == 0 {
                N /= divisor
                numbers.append(divisor)
            } else {
                divisor += 1
            }
        }

        numbers.forEach {
            print($0)
        }
    }

    // 메모리: 69100KB, 시간: 40ms, 코드 길이: 321B
    private func solution2() {
        var N = Int(readLine()!)!
        var divisor = 2
        var numbers = [Int]()

        while N % divisor == 0 {
            N /= divisor
            numbers.append(divisor)
        }

        divisor += 1

        while N > 1 {
            if N % divisor == 0 {
                N /= divisor
                numbers.append(divisor)
            } else {
                divisor += 2
            }
        }

        numbers.forEach {
            print($0)
        }
    }

    // 메모리: 69100KB, 시간: 32ms, 코드 길이: 214B
    private func solution3() {
        var N = Int(readLine()!)!
        var divisor = 3

        while N % 2 == 0 {
            N /= 2
            print(2)
        }

        while N > 1 {
            if N % divisor == 0 {
                N /= divisor
                print(divisor)
            } else {
                divisor += 2
            }
        }
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 258B
    private func solution4() {
        var N = Int(readLine()!)!
        var divisor = 3

        while N % 2 == 0 {
            N /= 2
            print(2)
        }

        while divisor * divisor <= N {
            if N % divisor == 0 {
                N /= divisor
                print(divisor)
            } else {
                divisor += 2
            }
        }

        if N > 1 {
            print(N)
        }
    }
}
