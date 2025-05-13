//
//  2594.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/28/25.
//

//  문제 링크: https://www.acmicpc.net/problem/2594
//  알고리즘 분류: 구현

import Shared

public struct BOJ2594: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69112KB, 시간: 8ms, 코드 길이: 544B
    private func solution1() {
        let N = Int(readLine()!)!
        var times = [(0, 600), (1320, 0)]
        var time = 0

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            times.append((input[0] / 100 * 60 + input[0] % 100 - 10, input[1] / 100 * 60 + input[1] % 100 + 10))
        }

        times.sort {
            if $0.0 == $1.0 {
                return $0.1 < $1.1
            }

            return $0.0 < $1.0
        }

        for idx in 1...(N+1) {
            times[idx].1 = max(times[idx].1, times[idx-1].1)
            let diff = times[idx].0 - times[idx-1].1

            if time < diff {
                time = diff
            }
        }

        print(time)
    }

    // 메모리: 69108KB, 시간: 8ms, 코드 길이: 517B
    private func solution2() {
        let N = Int(readLine()!)!
        var times = Array(repeating: true, count: 720)
        var count = 0
        var maxCount = 0

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { Int($0)! }

            for time in max(0, input[0] / 100 * 60 + input[0] % 100 - 610)..<min(720, input[1] / 100 * 60 + input[1] % 100 - 590) where times[time] {
                times[time] = false
            }
        }

        for time in times {
            if time {
                count += 1
                maxCount = max(maxCount, count)
            } else {
                count = 0
            }
        }

        print(maxCount)
    }
}
