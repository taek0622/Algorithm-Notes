//
//  16434.swift
//  BOJ16000To16999
//
//  Created by 김민택 on 6/12/25.
//

//  문제 링크: https://www.acmicpc.net/problem/16434
//  알고리즘 분류: 구현, 이분 탐색

import Shared

public struct BOJ16434: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 188ms, 코드 길이: 416B
        let NA = readLine()!.split(separator: " ").map { Int($0)! }
        var AH = (NA[1], 0)
        var minHP = 0

        for _ in 0..<NA[0] {
            let tah = readLine()!.split(separator: " ").map { Int($0)! }

            if tah[0] == 1 {
                AH.1 -= (tah[2] % AH.0 == 0 ? tah[2] / AH.0 - 1 : tah[2] / AH.0) * tah[1]
                minHP = min(minHP, AH.1)
            } else {
                AH.0 += tah[1]
                AH.1 = min(AH.1 + tah[2], 0)
            }
        }

        print(1 - minHP)
    }
}
