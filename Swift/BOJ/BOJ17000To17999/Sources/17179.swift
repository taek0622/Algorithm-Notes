//
//  17179.swift
//  BOJ17000To17999
//
//  Created by 김이안 on 4/24/26.
//

//  문제 링크: https://www.acmicpc.net/problem/17179
//  알고리즘 분류: 이분 탐색, 매개 변수 탐색

import Shared

public struct BOJ17179: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 32ms, 코드 길이: 652B
        let NML = readLine()!.split(separator: " ").map { Int($0)! }
        var S = Array(repeating: 0, count: NML[1] + 2)
        S[NML[1]+1] = NML[2]

        for idx in 1...NML[1] {
            S[idx] = Int(readLine()!)!
        }

        for _ in 0..<NML[0] {
            let input = Int(readLine()!)!
            var left = 1
            var right = NML[2]

            while left < right {
                let mid = (left + right) / 2
                var prev = S[0]
                var count = 0

                for idx in 1...NML[1]+1 where S[idx] - prev >= mid {
                    count += 1
                    prev = S[idx]
                }

                if count - 1 < input {
                    right = mid
                } else {
                    left = mid + 1
                }
            }

            print(left - 1)
        }
    }
}
