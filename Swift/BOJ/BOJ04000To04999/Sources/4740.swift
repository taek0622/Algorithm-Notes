//
//  4740.swift
//  BOJ04000To04999
//
//  Created by 김민택 on 7/26/25.
//

//  문제 링크: https://www.acmicpc.net/problem/4740
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ4740: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69096KB, 시간: 8ms, 코드 길이: 84B
        while let input = readLine(), input != "***" {
            print(String(input.reversed()))
        }
    }
}
