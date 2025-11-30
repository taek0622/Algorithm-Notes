//
//  32860.swift
//  BOJ32000To32999
//
//  Created by 김민택 on 11/30/25.
//

//  문제 링크: https://www.acmicpc.net/problem/32860
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ32860: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 4ms, 코드 길이: 245B
        var NM = readLine()!.split(separator: " ").map { Int($0)! }
        NM[1] -= 1
        let quot = NM[1] / 26
        print("SN \(NM[0])\(quot == 0 ? String(UnicodeScalar(NM[1] % 26 + 65)!) : String(UnicodeScalar(quot + 96)!) + String(UnicodeScalar(NM[1] % 26 + 97)!))")
    }
}
