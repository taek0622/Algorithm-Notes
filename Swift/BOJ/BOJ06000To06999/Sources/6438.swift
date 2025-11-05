//
//  6438.swift
//  BOJ06000To06999
//
//  Created by 김민택 on 11/5/25.
//

//  문제 링크: https://www.acmicpc.net/problem/6438
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ6438: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 76B
        for _ in 0..<Int(readLine()!)! {
            print(String(readLine()!.reversed()))
        }
    }
}
