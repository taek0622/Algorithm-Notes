//
//  25630.swift
//  BOJ25000To25999
//
//  Created by 김민택 on 9/7/25.
//

//  문제 링크: https://www.acmicpc.net/problem/25630
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ25630: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 162B
        let N = Int(readLine()!)!
        let input = readLine()!.map { $0 }
        var count = 0

        for idx in 0..<N/2 where input[idx] != input[N-idx-1] {
            count += 1
        }

        print(count)
    }
}
