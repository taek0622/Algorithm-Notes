//
//  11575.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 9/22/24.
//

//  문제 링크: https://www.acmicpc.net/problem/11575
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ11575: Solvable {
    public init() {}

    public func run() {
        // 메모리: 88588KB, 시간: 1116ms, 코드 길이: 240B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let ab = readLine()!.split(separator: " ").map { Int($0)! }
            let s = readLine()!.map { String(UnicodeScalar((Int($0.asciiValue! - 65) * ab[0] + ab[1]) % 26 + 65)!) }
            print(s.joined())
        }
    }
}
