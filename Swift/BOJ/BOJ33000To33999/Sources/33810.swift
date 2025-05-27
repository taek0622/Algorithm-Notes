//
//  33810.swift
//  BOJ33000To33999
//
//  Created by 김민택 on 5/27/25.
//

//  문제 링크: https://www.acmicpc.net/problem/33810
//  알고리즘 분류: 구현, 문자열

import Shared
public struct BOJ33810: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69096KB, 시간: 8ms, 코드 길이: 199B
        let origin = ["S", "c", "i", "C", "o", "m", "L", "o", "v", "e"]
        let S = readLine()!.map { String($0) }
        var count = 0

        for idx in S.indices where origin[idx] != S[idx] {
            count += 1
        }

        print(count)
    }
}
