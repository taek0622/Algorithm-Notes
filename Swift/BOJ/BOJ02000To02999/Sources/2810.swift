//
//  2810.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/29/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2810
//  알고리즘 분류: 구현, 그리디 알고리즘, 문자열

import Shared

public struct BOJ2810: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 173B
        let N = Int(readLine()!)!
        let seat = Array(readLine()!)
        var idx = 0
        var count = 1

        while idx < N {
            idx += seat[idx] == "S" ? 1 : 2
            count += 1
        }

        print(min(N, count))
    }
}
