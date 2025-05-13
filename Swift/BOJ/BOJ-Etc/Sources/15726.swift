//
//  15726.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/06/07.
//

// 문제: https://www.acmicpc.net/problem/15726

import Shared

public struct BOJ15726: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 153B
        let input = readLine()!.split(separator: " ").map { Double(String($0))! }
        print(Int(max(input[0] * input[1] / input[2], input[0] / input[1] * input[2])))
    }
}
