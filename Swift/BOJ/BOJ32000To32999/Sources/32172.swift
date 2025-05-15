//
//  32172.swift
//  BOJ32000To32999
//
//  Created by 김민택 on 5/15/25.
//

//  문제 링크: https://www.acmicpc.net/problem/32172
//  알고리즘 분류: 구현, 자료 구조, 해시를 사용한 집합과 맵

import Shared

public struct BOJ32172: Solvable {
    public init() {}

    public func run() {
        // 메모리: 71464KB, 시간: 16ms, 코드 길이: 300B
        let N = Int(readLine()!)!
        var A = Array(repeating: 0, count: N+1)
        var ASet: Set<Int> = [0]

        for i in stride(from: 1, through: N, by: 1) {
            let Ai = A[i-1] - i

            if Ai < 0 || ASet.contains(Ai) {
                A[i] = A[i-1] + i
            } else {
                A[i] = Ai
            }

            ASet.insert(A[i])
        }

        print(A[N])
    }
}
