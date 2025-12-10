//
//  18129.swift
//  BOJ18000To18999
//
//  Created by 김민택 on 12/10/25.
//

//  문제 링크: https://www.acmicpc.net/problem/18129
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ18129: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 391B
        let SK = readLine()!.split(separator: " ").map { String($0) }
        var S = SK[0].lowercased().map { String($0) }
        var result = ""

        while S.count > 0 {
            var count = 1

            for idx in 1..<S.count {
                if S[0] == S[idx] {
                    count += 1
                } else {
                    break
                }
            }

            result += count >= Int(SK[1])! ? "1" : "0"
            S = S.filter { $0 != S[0] }
        }

        print(result)
    }
}
