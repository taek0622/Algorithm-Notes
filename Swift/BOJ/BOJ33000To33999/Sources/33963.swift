//
//  33963.swift
//  BOJ33000To33999
//
//  Created by 김민택 on 12/3/25.
//

//  문제 링크: https://www.acmicpc.net/problem/33963
//  알고리즘 분류: 수학, 구현, 문자열

import Shared

public struct BOJ33963: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 4ms, 코드 길이: 137B
        let N = readLine()!
        var (num, count) = (Int(N)!, 0)

        while String(num).count == N.count {
            num *= 2
            count += 1
        }

        print(count - 1)
    }
}
