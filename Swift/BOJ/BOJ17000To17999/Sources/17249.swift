//
//  17249.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 9/1/24.
//

//  문제 링크: https://www.acmicpc.net/problem/17249
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ17249: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 135B
        let string = readLine()!.split(separator: "0")
        print("\(string[0].filter { $0 == "@" }.count) \(string[1].filter { $0 == "@" }.count)")
    }
}
