//
//  1107.swift
//  BOJ01000To01999
//
//  Created by 김이안 on 4/25/26.
//

//  문제 링크: https://www.acmicpc.net/problem/1107
//  알고리즘 분류: 브루트포스 알고리즘

import Shared

public struct BOJ1107: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 76ms, 코드 길이: 642B
        let N = Int(readLine()!)!
        let M = Int(readLine()!)!
        var broken = Set<Int>()

        if M != 0 {
            broken = Set(readLine()!.split(separator: " ").map { Int($0)! })
        }

        var minCount = abs(N - 100)

        if !broken.contains(0) {
            minCount = min(minCount, abs(N) + 1)
        }

        for channel in 1...999900 {
            var num = channel
            var step = 0
            var isAvailable = true

            while num > 0 {
                let curr = num % 10
                step += 1
                num /= 10

                if broken.contains(curr) {
                    isAvailable = false
                    break
                }
            }

            if isAvailable {
                minCount = min(minCount, abs(N-channel) + step)
            }
        }

        print(minCount)
    }
}
