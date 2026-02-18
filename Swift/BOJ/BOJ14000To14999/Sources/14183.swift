//
//  14183.swift
//  BOJ14000To14999
//
//  Created by 김민택 on 2/18/26.
//

//  문제 링크: https://www.acmicpc.net/problem/14183
//  알고리즘 분류: 구현

import Shared

public struct BOJ14183: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 522B
        while let input = readLine(), input != "0 0" {
            let mn = input.split(separator: " ").map { Int($0)! }
            let custKey = readLine()!.split(separator: " ").map { Int($0)! }
            var count = 0

            for _ in 0..<mn[1] {
                let trashKey = readLine()!.split(separator: " ").map { Int($0)! }
                var isMatch = true

                for idx in 0..<mn[0] where custKey[idx] < trashKey[idx] {
                    isMatch = false
                    break
                }

                if isMatch {
                    count += 1
                }
            }

            print(count)
        }
    }
}
