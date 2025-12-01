//
//  32401.swift
//  BOJ32000To32999
//
//  Created by 김민택 on 12/1/25.
//

//  문제 링크: https://www.acmicpc.net/problem/32401
//  알고리즘 분류: 구현, 문자열, 브루트포스 알고리즘

import Shared

public struct BOJ32401: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 443B
        let N = Int(readLine()!)!
        let S = readLine()!.map { String($0) }
        var (count, ACount, NCount) = (0, 0, 0)

        for idx in 0..<N {
            if S[idx] == "A" {
                ACount += 1

                if ACount == 1 {
                    NCount = 0
                }

                if ACount == 2 {
                    if NCount == 1 {
                        count += 1
                    }

                    (ACount, NCount) = (1, 0)
                }
            } else if S[idx] == "N" {
                NCount += 1
            }
        }

        print(count)
    }
}
