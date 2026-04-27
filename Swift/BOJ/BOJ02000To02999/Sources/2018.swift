//
//  2018.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/07/26.
//

// 문제: https://www.acmicpc.net/problem/2018

import Shared

public struct BOJ2018: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 96ms, 코드 길이: 355B
        let N = Int(readLine()!)!
        var count = 1

        if N != 1 {
            for point1 in 1...(N/2) {
                var sum = point1

                for point2 in (point1+1)...(N/2+1) {
                    sum += point2

                    if sum == N {
                        count += 1
                        break
                    } else if sum > N {
                        break
                    }
                }
            }
        }

        print(count)
    }
}
