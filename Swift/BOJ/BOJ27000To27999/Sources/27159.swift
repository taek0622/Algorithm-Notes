//
//  27159.swift
//  BOJ27000To27999
//
//  Created by 김민택 on 8/26/25.
//

//  문제 링크: https://www.acmicpc.net/problem/27159
//  알고리즘 분류: 구현

import Shared

public struct BOJ27159: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 204B
        let N = Int(readLine()!)!
        let x = readLine()!.split(separator: " ").map { Int($0)! }
        var sum = x[0]

        for idx in stride(from: 1, to: N, by: 1) where x[idx-1] + 1 != x[idx] {
            sum += x[idx]
        }

        print(sum)
    }
}
