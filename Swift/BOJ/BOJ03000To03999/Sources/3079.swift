//
//  3079.swift
//  BOJ03000To03999
//
//  Created by 김이안 on 4/27/26.
//

//  문제 링크: https://www.acmicpc.net/problem/3079
//  알고리즘 분류: 이분 탐색, 매개 변수 탐색

import Shared

public struct BOJ3079: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69892KB, 시간: 88ms, 코드 길이: 482B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var T = Array(repeating: 0, count: NM[0])

        for idx in 0..<NM[0] {
            T[idx] = Int(readLine()!)!
        }

        var left = 1
        var right = T.max()! * NM[1]

        while left < right {
            let mid = (left + right) / 2
            var count = 0

            for t in T {
                count += mid / t

                if count >= NM[1] {
                    break
                }
            }

            if count >= NM[1] {
                right = mid
            } else {
                left = mid + 1
            }
        }

        print(left)
    }
}
