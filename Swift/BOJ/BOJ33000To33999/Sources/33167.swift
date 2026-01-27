//
//  33167.swift
//  BOJ33000To33999
//
//  Created by 김민택 on 1/27/26.
//

//  문제 링크: https://www.acmicpc.net/problem/33167
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ33167: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 342B
        let N = Int(readLine()!)!
        let S = readLine()!.map { String($0) }
        let T = readLine()!.map { String($0) }
        var count = (0, 0)

        for idx in 0..<N {
            if S[idx] == "S" && T[idx] == "P" {
                count.0 += 1
            } else if (S[idx] == "R" && T[idx] == "P") || (S[idx] == "S" && T[idx] == "R") {
                count.1 += 1
            }
        }

        print(count.0, count.1)
    }
}
