//
//  27111.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/29/25.
//

//  문제 링크: https://www.acmicpc.net/problem/27111
//  알고리즘 분류: 구현, 애드 혹, 시뮬레이션

import Shared

public struct BOJ27111: Solvable {
    public init() {}

    public func run() {
        // 메모리: 72244KB, 시간: 240ms, 코드 길이: 396B
        let N = Int(readLine()!)!
        var entrance = Set<Int>()
        var count = 0

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            let insert = entrance.insert(input[0]).inserted

            if input[1] == 0 {
                entrance.remove(input[0])

                if insert {
                    count += 1
                }
            } else if !insert {
                count += 1
            }
        }

        print(entrance.count + count)
    }
}
