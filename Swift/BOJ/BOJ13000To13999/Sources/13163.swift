//
//  13163.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 8/22/24.
//

//  문제 링크: https://www.acmicpc.net/problem/13163
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ13163: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 170B
        let N = Int(readLine()!)!

        for _ in 0..<N {
            var nickname = readLine()!.split(separator: " ").map { String($0) }
            nickname[0] = "god"
            print(nickname.joined())
        }
    }
}
