//
//  32046.swift
//  BOJ32000To32999
//
//  Created by 김민택 on 1/2/26.
//

//  문제 링크: https://www.acmicpc.net/problem/32046
//  알고리즘 분류: 구현, 시뮬레이션

import Shared

public struct BOJ32046: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 203B
        while let input = readLine(), input != "0" {
            let a = readLine()!.split(separator: " ").map { Int($0)! }
            var yen = 0

            for k in a where yen + k <= 300 {
                yen += k
            }

            print(yen)
        }
    }
}
