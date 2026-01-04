//
//  34687.swift
//  BOJ34000To34999
//
//  Created by 김민택 on 1/4/26.
//

//  문제 링크: https://www.acmicpc.net/problem/34687
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ34687: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 4ms, 코드 길이: 111B
        let NM = readLine()!.split(separator: " ").map { Double($0)! }
        print(NM[0] * 81 / 100 <= NM[1] ? "yaho" : "no")
    }
}
