//
//  6321.swift
//  BOJ06000To06999
//
//  Created by 김민택 on 7/15/25.
//

//  문제 링크: https://www.acmicpc.net/problem/6321
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ6321: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 4ms, 코드 길이: 154B
        for idx in 1...Int(readLine()!)! {
            print("String #\(idx)\n\(readLine()!.map { String(UnicodeScalar(($0.asciiValue! - 64) % 26 + 65)) }.joined())\n")
        }
    }
}
