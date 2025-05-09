//
//  5525.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/04.
//

//  문제 링크: https://www.acmicpc.net/problem/5525
//  알고리즘 분류: 문자열

import Shared

public struct BOJ5525: Solvable {
    public init() {}

    public func run() {
        // 메모리: 85716KB, 시간: 128ms, 코드 길이: 368B
        let N = Int(readLine()!)!
        let M = Int(readLine()!)!
        let S = Array(readLine()!)
        var count = 0
        var result = 0
        var idx = 0

        while idx < M-2 {
            if S[idx...idx+2] == ["I", "O", "I"] {
                count += 1
                idx += 2

                if count == N {
                    result += 1
                    count -= 1
                }

                continue
            }

            count = 0
            idx += 1
        }

        print(result)
    }
}
