//
//  2110.swift
//  BOJ02000To02999
//
//  Created by 김이안 on 4/16/26.
//

//  문제 링크: https://www.acmicpc.net/problem/2110
//  알고리즘 분류: 이분 탐색, 매개 변수 탐색

import Shared

public struct BOJ2110: Solvable {
    public init() {}

    public func run() {
        // 메모리: 71456KB, 시간: 88ms, 코드 길이: 604B
        let NC = readLine()!.split(separator: " ").map { Int($0)! }
        var house = Array(repeating: 0, count: NC[0])

        for idx in 0..<NC[0] {
            house[idx] = Int(readLine()!)!
        }

        house.sort()

        var left = 1
        var right = house[NC[0]-1] - house[0]

        while left <= right {
            let mid = (left + right) / 2
            var prev = house[0]
            var count = 1

            for idx in 1..<NC[0] where house[idx] - prev >= mid {
                prev = house[idx]
                count += 1

                if count >= NC[1] {
                    break
                }
            }

            if count >= NC[1] {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }

        print(right)
    }
}
