//
//  9093.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/13/24.
//

//  문제 링크: https://www.acmicpc.net/problem/9093
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ9093: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 224ms, 코드 길이: 165B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let input = readLine()!.split(separator: " ").map { String($0.reversed()) }
            print(input.joined(separator: " "))
        }
    }
}
