//
//  2592.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/04/24.
//

// 문제: https://www.acmicpc.net/problem/2592

import Shared

public struct BOJ2592: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 316B
    private func solution1() {
        var counter = [Int: Int]()
        var sum = 0
        var modeNumber = 0

        for _ in 0..<10 {
            let number = Int(readLine()!)!

            sum += number
            counter[number, default: 0] += 1
        }

        counter.keys.forEach {
            if counter[$0]! > counter[modeNumber, default: 0] {
                modeNumber = $0
            }
        }

        print("\(sum/10)\n\(modeNumber)")
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 278B
    private func solution2() {
        var counter = Array(repeating: 0, count: 100)

        for _ in 0..<10 {
            counter[Int(readLine()!)! / 10] += 1
        }

        print(counter.enumerated().map { $0.offset * $0.element }.reduce(0, +))
        print(counter.enumerated().filter { $0.element == counter.max()! }.map { $0.offset }.first! * 10)
    }
}
