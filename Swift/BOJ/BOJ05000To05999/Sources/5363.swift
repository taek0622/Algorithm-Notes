//
//  5363.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 9/12/24.
//

//  문제 링크: https://www.acmicpc.net/problem/5363
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ5363: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 161B
        let N = Int(readLine()!)!

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ")
            print(input[2...].joined(separator: " "), input[0], input[1])
        }
    }
}
