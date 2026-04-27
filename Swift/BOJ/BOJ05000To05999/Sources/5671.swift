//
//  5671.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/08/08.
//

// 문제: https://www.acmicpc.net/problem/5671

import Shared

public struct BOJ5671: Solvable {
    public init() {}

    public func run() {
        solution1()
    }

    // 메모리: 69104KB, 시간: 96ms, 코드 길이: 480B
    private func solution1() {
        while let input = readLine(), input != "" {
            let NM = input.split(separator: " ").map { Int(String($0))! }
            var count = 0

            out: for num in NM[0]...NM[1] {
                var number = num
                var contains = Array(repeating: false, count: 10)

                while number > 0 {
                    if contains[number % 10] {
                        continue out
                    }

                    contains[number % 10] = true
                    number /= 10
                }

                count += 1
            }

            print(count)
        }
    }

    // 메모리: 69108KB, 시간: 640ms, 코드 길이: 384B
    private func solution2() {
        while let input = readLine(), input != "" {
            let NM = input.split(separator: " ").map { Int(String($0))! }
            var count = 0

            out: for num in NM[0]...NM[1] {
                var number = String(num)
                var contains = Set<Character>()

                for num in number where !contains.insert(num).inserted {
                    continue out
                }

                count += 1
            }

            print(count)
        }
    }

    // 메모리: 69108KB, 시간: 748ms, 코드 길이: 408B
    private func solution3() {
        while let input = readLine(), input != "" {
            let NM = input.split(separator: " ").map { Int(String($0))! }
            var count = 0

            for num in NM[0]...NM[1] {
                var number = String(num)
                var contains = Set<Character>()

                for num in number {
                    contains.insert(num)
                }

                if number.count == contains.count {
                    count += 1
                }
            }

            print(count)
        }
    }
}
