//
//  3181.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/29/24.
//

//  문제 링크: https://www.acmicpc.net/problem/3181
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ3181: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 291B
        let dump = ["i", "pa", "te", "ni", "niti", "a", "ali", "nego", "no", "ili"]
        let string = readLine()!.split(separator: " ").map { String($0) }
        var abbr = ""

        for idx in 0..<string.count where idx == 0 || !dump.contains(string[idx]) {
            abbr += string[idx].first!.uppercased()
        }

        print(abbr)
    }
}
