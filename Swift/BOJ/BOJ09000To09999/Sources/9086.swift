//
//  9086.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/25.
//

//  문제 링크: https://www.acmicpc.net/problem/9086
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ9086: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 119B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let str = String(readLine()!)

            print("\(str.first!)\(str.last!)")
        }
    }
}
