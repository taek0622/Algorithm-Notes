//
//  34553.swift
//  BOJ34000To34999
//
//  Created by 김민택 on 12/2/25.
//

//  문제 링크: https://www.acmicpc.net/problem/34553
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ34553: Solvable {
    public init() {}

    public func run() {
        // 메모리: 70660KB, 시간: 12ms, 코드 길이: 219B
        let S = readLine()!.map { String($0) }
        var (total, current) = (1, 1)

        for idx in 1..<S.count {
            if S[idx] > S[idx-1] {
                current += 1
            } else {
                current = 1
            }

            total += current
        }

        print(total)
    }
}
