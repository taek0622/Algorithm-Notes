//
//  20499.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/05/21.
//

// 문제: https://www.acmicpc.net/problem/20499

import Shared

public struct BOJ20499: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 133B
        let KDA = readLine()!.split(separator: "/").map { Int(String($0))! }
        print(KDA[0] + KDA[2] < KDA[1] || KDA[1] == 0 ? "hasu" : "gosu")
    }
}
