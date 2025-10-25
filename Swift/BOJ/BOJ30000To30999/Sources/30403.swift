//
//  30403.swift
//  BOJ30000To30999
//
//  Created by 김민택 on 10/25/25.
//

//  문제 링크: https://www.acmicpc.net/problem/30403
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ30403: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 4ms, 코드 길이: 364B
        _ = readLine()
        let sentence = readLine()!
        var lower = Set<Character>()
        var upper = lower

        for char in sentence {
            if "roygbiv".contains(char) {
                lower.insert(char)
            } else if "ROYGBIV".contains(char) {
                upper.insert(char)
            }
        }

        print(lower.count == 7 && upper.count == 7 ? "YeS" : lower.count == 7 ? "yes" : upper.count == 7 ? "YES" : "NO!")
    }
}
