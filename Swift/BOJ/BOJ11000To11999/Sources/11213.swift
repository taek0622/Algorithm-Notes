//
//  11213.swift
//  BOJ11000To11999
//
//  Created by 김민택 on 12/22/25.
//

//  문제 링크: https://www.acmicpc.net/problem/11213
//  알고리즘 분류: 구현

import Shared

public struct BOJ11213: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 258B
        _ = readLine()
        let a = readLine()!.split(separator: " ").map { Int($0)! }
        var dice = a

        while dice.filter { $0 == dice.max()! }.count > 1 {
            dice = dice.filter { $0 != dice.max()! }
        }

        print(dice.max() != nil ? a.firstIndex(of: dice.max()!)! + 1 : "none")
    }
}
