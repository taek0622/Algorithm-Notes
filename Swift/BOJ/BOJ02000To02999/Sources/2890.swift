//
//  2890.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/29/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2890
//  알고리즘 분류: 구현, 문자열, 정렬

import Shared

public struct BOJ2890: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69116KB, 시간: 8ms, 코드 길이: 424B
        let RC = readLine()!.split(separator: " ").map { Int($0)! }
        var remain = Array(repeating: RC[1], count: 9)

        for _ in 0..<RC[0] {
            let input = readLine()!.map { String($0) }

            for idx in input.indices {
                guard let num = Int(input[idx]) else { continue }
                remain[num - 1] = RC[1] - (idx + 3)
                break
            }
        }

        let rank = Set(remain).sorted()

        remain.forEach {
            print(rank.firstIndex(of: $0)! + 1)
        }
    }
}
