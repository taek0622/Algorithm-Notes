//
//  14646.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/14/25.
//

//  문제 링크: https://www.acmicpc.net/problem/14646
//  알고리즘 분류: 구현, 시뮬레이션

import Shared

public struct BOJ14646: Solvable {
    public init() {}

    public func run() {
        // 메모리: 84628KB, 시간: 88ms, 코드 길이: 294B
        _ = readLine()
        let menus = readLine()!.split(separator: " ").map { Int($0)! }
        var maxCount = 0
        var sticker = Set<Int>()

        for menu in menus {
            if sticker.insert(menu).inserted {
                maxCount = max(maxCount, sticker.count)
            } else {
                sticker.remove(menu)
            }
        }

        print(maxCount)
    }
}
