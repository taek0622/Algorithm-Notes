//
//  14652.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/04/26.
//

// 문제: https://www.acmicpc.net/problem/14652

import Shared

public struct BOJ14652: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 136B
        let location = readLine()!.split(separator: " ").map { Int(String($0))! }
        print("\(location[2]/location[1]) \(location[2]%location[1])")
    }
}
