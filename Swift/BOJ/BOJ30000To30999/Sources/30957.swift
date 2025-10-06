//
//  30957.swift
//  BOJ30000To30999
//
//  Created by 김민택 on 10/6/25.
//

//  문제 링크: https://www.acmicpc.net/problem/30957
//  알고리즘 분류: 구현, 문자열, 많은 조건 분기

import Shared

public struct BOJ30957: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69292KB, 시간: 12ms, 코드 길이: 553B
        let _ = readLine()
        var (B, S, A) = (0, 0, 0)
        let string = readLine()!

        for char in string {
            if char == "B" {
                B += 1
            } else if char == "S" {
                S += 1
            } else {
                A += 1
            }
        }

        let m = max(B, S, A)

        if m == B {
            if B == S {
                if B == A {
                    print("SCU")
                } else {
                    print("BS")
                }
            } else if B == A {
                print("BA")
            } else {
                print("B")
            }
        } else if m == S {
            if S == A {
                print("SA")
            } else {
                print("S")
            }
        } else {
            print("A")
        }
    }
}
