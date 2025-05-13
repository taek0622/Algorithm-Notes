//
//  8949.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 9/20/24.
//

//  문제 링크: https://www.acmicpc.net/problem/8949
//  알고리즘 분류: 수학, 구현, 문자열, 사칙연산

import Shared

public struct BOJ8949: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 329B
        let AB = readLine()!.split(separator: " ").map { String($0) }
        var (A, B) = (AB[0].map { Int(String($0))! }, AB[1].map { Int(String($0))! })
        A.reverse()
        B.reverse()

        if A.count > B.count {
            let temp = A
            A = B
            B = temp
        }

        for idx in 0..<A.count {
            B[idx] += A[idx]
        }

        B.reverse()

        print(B.map { String($0) }.joined())
    }
}
