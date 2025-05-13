//
//  8979.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 5/28/24.
//

//  문제 링크: https://www.acmicpc.net/problem/8979
//  알고리즘 분류: 구현, 정렬

import Shared

public struct BOJ8979: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69112KB, 시간: 12ms, 코드 길이: 415B
        let NK = readLine()!.split(separator: " ").map { Int($0)! }
        var medal = (0, 0, 0)
        var nations = [(Int, Int, Int)]()

        for _ in 0..<NK[0] {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            nations.append((input[1], input[2], input[3]))

            if input[0] == NK[1] {
                medal = (input[1], input[2], input[3])
            }
        }

        nations.sort(by: >)

        print(nations.firstIndex(where: { $0 == medal })! + 1)
    }
}
