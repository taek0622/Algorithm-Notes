//
//  10799.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/24/23.
//

//  문제 링크: https://www.acmicpc.net/problem/10799
//  알고리즘 분류: 자료 구조, 스택

import Shared

public struct BOJ10799: Solvable {
    public init() {}

    public func run() {
        // 메모리: 70660KB, 시간: 16ms, 코드 길이: 390B
        let brackets = readLine()!.map { String($0) }
        var total = 0
        var current = 0
        var idx = 0

        while idx < brackets.count {
            if idx < brackets.count - 1 && brackets[idx] == "(" && brackets[idx+1] == ")" {
                total += current
                idx += 1
            } else if brackets[idx] == "(" {
                total += 1
                current += 1
            } else {
                current -= 1
            }

            idx += 1
        }

        print(total)
    }
}
