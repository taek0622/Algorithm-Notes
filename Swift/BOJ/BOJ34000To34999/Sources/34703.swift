//
//  34703.swift
//  BOJ34000To34999
//
//  Created by 김민택 on 12/4/25.
//

//  문제 링크: https://www.acmicpc.net/problem/34703
//  알고리즘 분류: 구현

import Shared

public struct BOJ34703: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 146B
        let N = Int(readLine()!)!
        var lesson = Set<Int>()

        for _ in 0..<N {
            lesson.insert(Int(readLine()!)!)
        }

        print(lesson.count < 5 ? "YES" : "NO")
    }
}
