//
//  16944.swift
//  BOJ16000To16999
//
//  Created by 김민택 on 10/30/25.
//

//  문제 링크: https://www.acmicpc.net/problem/16944
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ16944: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 4ms, 코드 길이: 564B
        let N = Int(readLine()!)!
        let S = readLine()!
        var (num, lower, upper, special) = (false, false, false, false)
        var count = 0

        for s in S {
            if "0123456789".contains(s) {
                num = true
            } else if "abcdefghijklmnopqrstuvwxyz".contains(s) {
                lower = true
            } else if "ABCDEFGHIJKLMNOPQRSTUVWXYZ".contains(s) {
                upper = true
            } else if "!@#$%^&*()-+".contains(s) {
                special = true
            }
        }

        if !num {
            count += 1
        }

        if !lower {
            count += 1
        }

        if !upper {
            count += 1
        }

        if !special {
            count += 1
        }

        print(max(count, 6-N))
    }
}
