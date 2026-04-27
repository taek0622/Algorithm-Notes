//
//  2217.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/06.
//

// 문제: https://www.acmicpc.net/problem/2217

import Shared

public struct BOJ2217: Solvable {
    public init() {}

    public func run() {
        solution1()
    }

    // 메모리: 70672KB, 시간: 60ms, 코드 길이: 297B
    private func solution1() {
        let N = Int(readLine()!)!
        var ropes = [Int]()
        var maxWeight = 0

        for _ in 0..<N {
            ropes.append(Int(readLine()!)!)
        }

        ropes.sort()

        for idx in ropes.indices {
            let newWeight = ropes[idx] * (N - idx)

            if newWeight > maxWeight {
                maxWeight = newWeight
            }
        }

        print("\(maxWeight)")
    }

    // 메모리: 71064KB, 시간: 60ms, 코드 길이: 267B
    private func solution2() {
        let N = Int(readLine()!)!
        var ropes = (0..<N).map { _ in Int(readLine()!)! }.sorted()
        var maxWeight = 0

        for idx in ropes.indices {
            let newWeight = ropes[idx] * (N - idx)

            if newWeight > maxWeight {
                maxWeight = newWeight
            }
        }

        print("\(maxWeight)")
    }
}
