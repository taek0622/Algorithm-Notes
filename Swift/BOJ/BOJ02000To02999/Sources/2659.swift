//
//  2659.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/24/25.
//

//  문제 링크: https://www.acmicpc.net/problem/2659
//  알고리즘 분류: 구현, 브루트포스 알고리즘, 정렬

import Shared

public struct BOJ2659: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69112KB, 시간: 8ms, 코드 길이: 813B
        var clockNumbers = Set<Int>()

        for first in 1...9 {
            for second in 1...9 {
                for third in 1...9 {
                    for fourth in 1...9 {
                        clockNumbers.insert(min(first * 1000 + second * 100 + third * 10 + fourth, second * 1000 + third * 100 + fourth * 10 + first, third * 1000 + fourth * 100 + first * 10 + second, fourth * 1000 + first * 100 + second * 10 + third))
                    }
                }
            }
        }

        let numbers = readLine()!.split(separator: " ").map { Int($0)! }
        print(clockNumbers.sorted().firstIndex(of: min(numbers[0] * 1000 + numbers[1] * 100 + numbers[2] * 10 + numbers[3], numbers[1] * 1000 + numbers[2] * 100 + numbers[3] * 10 + numbers[0], numbers[2] * 1000 + numbers[3] * 100 + numbers[0] * 10 + numbers[1], numbers[3] * 1000 + numbers[0] * 100 + numbers[1] * 10 + numbers[2]))! + 1)
    }
}
