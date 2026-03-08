//
//  34761.swift
//  BOJ34000To34999
//
//  Created by 김이안 on 3/8/26.
//

//  문제 링크: https://www.acmicpc.net/problem/34761
//  알고리즘 분류: 구현

import Shared

public struct BOJ34761: Solvable {
    public init() {}

    public func run() {
        // 메모리: 106944KB, 시간: 244ms, 코드 길이: 206B
        let N = Int(readLine()!)!
        let A = readLine()!.split(separator: " ").map { Int($0)! }
        let B = readLine()!.split(separator: " ").map { Int($0)! }
        print(Set(A) != Set(B) || A[0..<N] != B[0..<N] ? "NO" : "YES")
    }
}
