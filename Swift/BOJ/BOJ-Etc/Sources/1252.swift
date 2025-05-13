//
//  1252.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/06/12.
//

// 문제: https://www.acmicpc.net/problem/1252

import Shared

public struct BOJ1252: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69108KB, 시간: 8ms, 코드 길이: 956B
    private func solution1() {
        let input = readLine()!.split(separator: " ").map { String($0) }
        var minArray = [Character]()
        var maxArray = [Character]()
        var result = [Int]()
        var isFirstOne = false

        if input[0].count > input[1].count {
            minArray = Array(input[1]).reversed()
            maxArray = Array(input[0]).reversed()
        } else {
            minArray = Array(input[0]).reversed()
            maxArray = Array(input[1]).reversed()
        }

        for number in maxArray {
            result.append(Int(String(number))!)
        }

        for idx in 0..<minArray.count {
            result[idx] += Int(String(minArray[idx]))!
        }

        for idx in result.indices {
            if result[idx] > 1 {
                result[idx] %= 2

                if idx == result.count - 1 {
                    result.append(1)
                } else {
                    result[idx + 1] += 1
                }
            }
        }

        result.reverse()

        while !isFirstOne {
            if result == [0] || result.first == 1 {
                isFirstOne = true
            } else {
                result.removeFirst()
            }
        }

        result.forEach {
            print($0, terminator: "")
        }
    }

    // 메모리: 69108KB, 시간: 8ms, 코드 길이: 678B
    private func solution2() {
        var input = readLine()!.split(separator: " ").map { Array($0).map { Int(String($0))! } }
        var result = Array(repeating: 0, count: max(input[0].count, input[1].count) + 2)

        input[0].reverse()
        input[1].reverse()

        input[0].append(contentsOf: Array(repeating: 0, count: result.count - input[0].count))
        input[1].append(contentsOf: Array(repeating: 0, count: result.count - input[1].count))

        for idx in 0..<result.count - 1 {
            let number = input[0][idx] + input[1][idx] + result[idx]
            result[idx] = number % 2
            result[idx + 1] = number / 2
        }

        result.reverse()

        while result.count > 1 && result.first == 0 {
            result.removeFirst()
        }

        print(result.map { String($0) }.joined())
    }
}
