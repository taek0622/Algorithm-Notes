//
//  14909.swift
//  BOJ14000To14999
//
//  Created by 김민택 on 7/23/25.
//

//  문제 링크: https://www.acmicpc.net/problem/14909
//  알고리즘 분류: 구현

import Shared

public struct BOJ14909: Solvable {
    public init() {}

    public func run() {
        // 메모리: 125496KB, 시간: 416ms, 코드 길이: 81B
        print(readLine()!.split(separator: " ").map { Int($0)! }.filter { $0 > 0 }.count)
    }
}
