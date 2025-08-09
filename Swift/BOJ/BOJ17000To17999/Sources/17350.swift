//
//  17350.swift
//  BOJ17000To17999
//
//  Created by 김민택 on 8/9/25.
//

//  문제 링크: https://www.acmicpc.net/problem/17350
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ17350: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 132B
        let N = Int(readLine()!)!
        var result = "뭐야?"

        for _ in 0..<N where readLine() == "anj" {
            result = "뭐야;"
        }

        print(result)
    }
}
