//
//  12756.swift
//  BOJ12000To12999
//
//  Created by 김민택 on 7/28/25.
//

//  문제 링크: https://www.acmicpc.net/problem/12756
//  알고리즘 분류: 수학, 구현, 시뮬레이션, 사칙연산

import Shared

public struct BOJ12756: Solvable {
    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 259B
        var (A, B) = (readLine()!.split(separator: " ").map { Int($0)! }, readLine()!.split(separator: " ").map { Int($0)! })

        while A[1] > 0 && B[1] > 0 {
            A[1] -= B[0]
            B[1] -= A[0]
        }

        print(A[1] <= 0 && B[1] <= 0 ? "DRAW" : "PLAYER \(A[1] <= 0 ? "B" : "A")")
    }
}
