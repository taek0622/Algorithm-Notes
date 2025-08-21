//
//  23080.swift
//  BOJ23000To23999
//
//  Created by 김민택 on 8/21/25.
//

//  문제 링크: https://www.acmicpc.net/problem/23080
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ23080: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 142B
        let K = Int(readLine()!)!
        let S = readLine()!.map { $0 }

        for idx in stride(from: 0, to: S.count, by: K) {
            print(S[idx], terminator: "")
        }
    }
}
