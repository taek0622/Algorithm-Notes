//
//  20494.swift
//  BOJ20000To20999
//
//  Created by 김민택 on 10/28/25.
//

//  문제 링크: https://www.acmicpc.net/problem/20494
//  알고리즘 분류: 구현, 문자열, 애드 혹

import Shared

public struct BOJ20494: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 104B
        let N = Int(readLine()!)!
        var count = 0

        for _ in 0..<N {
            count += readLine()!.count
        }

        print(count)
    }
}
