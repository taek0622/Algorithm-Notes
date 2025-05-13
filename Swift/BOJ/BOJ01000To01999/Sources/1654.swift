//
//  1654.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/8/23.
//

//  문제 링크: https://www.acmicpc.net/problem/1654
//  알고리즘 분류: 이분 탐색, 매개 변수 탐색

import Shared

public struct BOJ1654: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69240KB, 시간: 16ms, 코드 길이: 417B
        let NK = readLine()!.split(separator: " ").map { Int($0)! }
        var lines = [Int]()

        for _ in 0..<NK[0] {
            lines.append(Int(readLine()!)!)
        }

        var (left, right) = (1, lines.max()!)

        while left <= right {
            var count = 0
            let mid = (left + right) / 2

            for line in lines {
                count += line / mid
            }

            if count < NK[1] {
                right = mid - 1
            } else {
                left = mid + 1
            }
        }

        print(right)
    }
}
