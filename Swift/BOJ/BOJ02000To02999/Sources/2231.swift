//
//  2231.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/07.
//

// 문제: https://www.acmicpc.net/problem/2231

import Shared

public struct BOJ2231: Solvable {
    public init() {}

    public func run() {
        solution3()
    }

    // 메모리: 69100KB, 시간: 24ms, 코드 길이: 349B
    private func solution1() {
        let N = Int(readLine()!)!

        var constructor = 1
        while constructor < 1000000 {
            var number = constructor
            var result = number

            while number > 0 {
                result += (number % 10)
                number /= 10
            }

            if N == result {
                print(constructor)
                break
            }

            constructor += 1
        }

        if constructor == 1000000 {
            print(0)
        }
    }

    // 메모리: 81588KB, 시간: 36ms, 코드 길이: 286B
    private func solution2() {
        let N = Int(readLine()!)!
        var numbers = [Int]()

        for idx in 0...1000000 {
            var constructor = idx
            var num = constructor

            while constructor > 0 {
                num += constructor % 10
                constructor /= 10
            }

            numbers.append(num)
        }

        print((numbers.firstIndex(of: N) ?? 0))
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 253B
    private func solution3() {
        let N = Int(readLine()!)!
        var result = 0

        for num in N-(String(N).count * 9)...N {
            let sum = String(num).reduce(0) {
                $0 + Int(String($1))!
            }

            if sum + num == N {
                result = num
                break
            }
        }

        print(result)
    }
}
