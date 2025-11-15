//
//  16675.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/15/25.
//

//  문제 링크: https://www.acmicpc.net/problem/16861
//  알고리즘 분류: 수학, 구현, 브루트포스 알고리즘

import Shared

public struct BOJ16861: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 4ms, 코드 길이: 230B
        var n = Int(readLine()!)!

        while true {
            var num = n
            var div = 0

            while num > 0 {
                div += num % 10
                num /= 10
            }

            if n % div == 0 {
                print(n)
                break
            } else {
                n += 1
            }
        }
    }
}
