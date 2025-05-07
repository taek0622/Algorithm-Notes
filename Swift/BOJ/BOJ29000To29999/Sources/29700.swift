//
//  29700.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/7/25.
//

//  문제 링크: https://www.acmicpc.net/problem/29700
//  알고리즘 분류: 구현, 문자열, 브루트포스 알고리즘, 누적 합, 슬라이딩 윈도우

import Shared

public struct BOJ29700: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 260ms, 코드 길이: 650B
        let NMK = readLine()!.split(separator: " ").map { Int($0)! }
        let target = Array(repeating: true, count: NMK[2])
        var totalCount = 0

        if NMK[1] >= NMK[2] {
            for _ in 0..<NMK[0] {
                let input = readLine()!.map { $0 == "0" }
                var count = 0

                for idx in 0..<NMK[1] {
                    if input[idx] {
                        count += 1
                    } else {
                        if count >= NMK[2] {
                            totalCount += count - NMK[2] + 1
                        }

                        count = 0
                    }
                }

                if count >= NMK[2] {
                    totalCount += count - NMK[2] + 1
                }

                count = 0
            }
        }

        print(totalCount)
    }
}
