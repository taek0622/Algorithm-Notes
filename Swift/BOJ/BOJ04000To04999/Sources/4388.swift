//
//  4388.swift
//  BOJ04000To04999
//
//  Created by 김민택 on 10/31/25.
//

//  문제 링크: https://www.acmicpc.net/problem/4388
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ4388: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 4ms, 코드 길이: 639B
        while let input = readLine(), input != "0 0" {
            let nums = input.split(separator: " ").map { String($0) }
            var (num1, num2) = (nums[0].reversed().map { Int(String($0))! } + Array(repeating: 0, count: max(nums[0].count, nums[1].count) + 1 - nums[0].count), nums[1].reversed().map { Int(String($0))! } + Array(repeating: 0, count: max(nums[0].count, nums[1].count) + 1 - nums[1].count))
            var carry = 0

            for idx in 0..<min(num1.count, num2.count) {
                let sum = num1[idx] + num2[idx]

                if sum > 9 {
                    num1[idx+1] += 1
                    carry += 1
                }

                num1[idx] += sum % 10
            }

            print(carry)
        }
    }
}
