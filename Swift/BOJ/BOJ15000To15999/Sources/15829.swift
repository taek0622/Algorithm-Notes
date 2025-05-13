//
//  15829.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/13/24.
//

//  문제 링크: https://www.acmicpc.net/problem/15829
//  알고리즘 분류: 구현, 문자열, 해싱

import Shared

public struct BOJ15829: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 204B
        _ = readLine()
        let string = readLine()!.map { Int($0.asciiValue!) - 96 }
        var sum = 0
        var mul = 1

        for num in string {
            sum = (sum + num * mul) % 1234567891
            mul = mul * 31 % 1234567891
        }

        print(sum)
    }
}
