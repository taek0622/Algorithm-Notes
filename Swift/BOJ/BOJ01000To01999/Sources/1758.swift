//
//  1758.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/09/05.
//

//  문제 링크: https://www.acmicpc.net/problem/1758
//  알고리즘 분류: 그리디 알고리즘, 정렬

import Shared

public struct BOJ1758: Solvable {
    public init() {}

    public func run() {
        // 메모리: 70672KB, 시간: 56ms, 코드 길이: 232B
        let N = Int(readLine()!)!
        var tips = [Int]()
        var result = 0

        for _ in 0..<N {
            tips.append(Int(readLine()!)!)
        }

        tips.sort(by: >)

        for idx in tips.indices where tips[idx] - idx > 0 {
            result += tips[idx] - idx
        }

        print(result)
    }
}
