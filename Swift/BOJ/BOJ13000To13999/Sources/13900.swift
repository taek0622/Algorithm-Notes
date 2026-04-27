//
//  13900.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/08/02.
//

// 문제: https://www.acmicpc.net/problem/13900

import Shared

public struct BOJ13900: Solvable {
    public init() {}

    public func run() {
        
    }

    // 메모리: 76892KB, 시간: 52ms, 코드 길이: 288B
    private func solution1() {
        let N = Int(readLine()!)!
        let numbers = readLine()!.split(separator: " ").map { Int(String($0))! }
        var psum = [numbers[0]]
        var sum = 0

        for idx in 1..<N {
            psum.append(psum[idx - 1] + numbers[idx])
        }

        for idx in 0..<N {
            sum += numbers[idx] * (psum[N - 1] - psum[idx])
        }

        print(sum)
    }

    // 메모리: 76892KB, 시간: 40ms, 코드 길이: 223B
    private func solution2() {
        let N = Int(readLine()!)!
        let numbers = readLine()!.split(separator: " ").map { Int($0)! }
        var sum = numbers.reduce(0, +)
        var result = 0

        for number in numbers {
            sum -= number
            result += sum * number
        }

        print(result)
    }
}
