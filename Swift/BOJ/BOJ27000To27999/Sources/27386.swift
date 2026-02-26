//
//  27386.swift
//  BOJ27000To27999
//
//  Created by 김민택 on 2/26/26.
//

//  문제 링크: https://www.acmicpc.net/problem/27386
//  알고리즘 분류: 구현, 문자열, 정렬

import Shared

public struct BOJ27386: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 71B
        print((readLine()! + readLine()!).sorted().map { String($0) }.joined())
    }
}
