//
//  32751.swift
//  BOJ32000To32999
//
//  Created by 김민택 on 11/24/25.
//

//  문제 링크: https://www.acmicpc.net/problem/32751
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ32751: Solvable {
    public init() {}

    public func run() {
        // 메모리: 70808KB, 시간: 12ms, 코드 길이: 446B
        let N = Int(readLine()!)!
        var ABCD = readLine()!.split(separator: " ").map { Int($0)! }
        let S = readLine()!.map { $0 }
        var isGood = true

        if S.first! != "a" || S.last! != "a" {
            isGood = false
        }

        for idx in 0..<N {
            ABCD[Int(S[idx].asciiValue!) - 97] -= 1

            if idx > 0 && S[idx] == S[idx-1] {
                isGood = false
            }
        }

        if ABCD[0] < 0 || ABCD[1] < 0 || ABCD[2] < 0 || ABCD[3] < 0 {
            isGood = false
        }

        print(isGood ? "Yes" : "No")
    }
}
