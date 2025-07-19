//
//  15781.swift
//  BOJ15000To15999
//
//  Created by 김민택 on 7/19/25.
//

//  문제 링크: https://www.acmicpc.net/problem/15781
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ15781: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 139B
        _ = readLine()
        print(readLine()!.split(separator: " ").map { Int($0)! }.max()! + readLine()!.split(separator: " ").map { Int($0)! }.max()!)
    }
}
