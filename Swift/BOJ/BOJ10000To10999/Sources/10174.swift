//
//  10174.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 9/10/24.
//

//  문제 링크: https://www.acmicpc.net/problem/10174
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ10174: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 146B
        let n = Int(readLine()!)!

        for _ in 0..<n {
            let input = readLine()!.lowercased()
            print(input == String(input.reversed()) ? "Yes" : "No")
        }
    }
}
