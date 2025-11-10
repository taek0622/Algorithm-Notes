//
//  33845.swift
//  BOJ33000To33999
//
//  Created by 김민택 on 11/10/25.
//

//  문제 링크: https://www.acmicpc.net/problem/33845
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ33845: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 81B
        let S = Set(readLine()!.map { $0 })
        print(readLine()!.filter { !S.contains($0) })
    }
}
