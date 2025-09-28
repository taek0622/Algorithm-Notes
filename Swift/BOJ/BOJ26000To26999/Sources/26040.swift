//
//  26040.swift
//  BOJ26000To26999
//
//  Created by 김민택 on 9/28/25.
//

//  문제 링크: https://www.acmicpc.net/problem/26040
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ26040: Solvable {
    public init() {}

    public func run() {
        // 메모리: 71020KB, 시간: 24ms, 코드 길이: 197B
        let A = readLine()!.map { String($0) }
        let B = Set(readLine()!.split(separator: " ").map { String($0) })
        var C = ""

        for char in A {
            C += B.contains(char) ? char.lowercased() : char
        }

        print(C)
    }
}
