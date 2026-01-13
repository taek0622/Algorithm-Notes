//
//  34802.swift
//  BOJ34000To34999
//
//  Created by 김민택 on 1/13/26.
//

//  문제 링크: https://www.acmicpc.net/problem/34802
//  알고리즘 분류: 수학, 구현, 문자열, 사칙연산, 파싱

import Shared

public struct BOJ34802: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 355B
        let start = readLine()!.split(separator: ":").map { Double($0)! }
        let s = start[0] * 3600 + start[1] * 60 + start[2]
        let end = readLine()!.split(separator: ":").map { Double($0)! }
        let e = end[0] * 3600 + end[1] * 60 + end[2]
        let tk = readLine()!.split(separator: " ").map { Double($0)! }
        let run = tk[0] - tk[0] / 100 * tk[1]

        print(e - s >= run ? 1 : 0)
    }
}
