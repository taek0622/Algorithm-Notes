//
//  27333.swift
//  BOJ27000To27999
//
//  Created by 김민택 on 12/28/25.
//

//  문제 링크: https://www.acmicpc.net/problem/27333
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ27333: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 358B
        let N = Int(readLine()!)!
        var S = readLine()!.map { String($0) }

        for idx in stride(from: 1, to: N, by: 1) where S[idx] == S[idx-1] {
            if S[idx] == "j" {
                S[idx] = "J"
                S[idx-1] = "J"
            } else if S[idx] == "o" {
                S[idx] = "O"
                S[idx-1] = "O"
            } else {
                S[idx] = "I"
                S[idx-1] = "I"
            }
        }

        print(S.joined())
    }
}
