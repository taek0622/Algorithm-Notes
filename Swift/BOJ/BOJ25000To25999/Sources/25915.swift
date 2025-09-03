//
//  25915.swift
//  BOJ25000To25999
//
//  Created by 김민택 on 9/3/25.
//

//  문제 링크: https://www.acmicpc.net/problem/25915
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ25915: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69096KB, 시간: 4ms, 코드 길이: 61B
        print(abs(Int(Character(readLine()!).asciiValue!) - 73) + 84)
    }
}
