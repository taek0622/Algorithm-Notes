//
//  2230.swift
//  BOJ02000To02999
//
//  Created by 김이안 on 4/22/26.
//

//  문제 링크: https://www.acmicpc.net/problem/2230
//  알고리즘 분류: 정렬, 두 포인터

import Shared

public struct BOJ2230: Solvable {
    public init() {}

    public func run() {
        // 메모리: 70284KB, 시간: 56ms, 코드 길이: 441B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var A = Array(repeating: 0, count: NM[0])
        var minDiff = Int.max

        for idx in 0..<NM[0] {
            A[idx] = Int(readLine()!)!
        }

        A.sort()
        var left = 0
        var right = 0

        while right < NM[0] {
            let diff = A[right] - A[left]

            if diff < NM[1] {
                right += 1
            } else {
                minDiff = min(minDiff, diff)
                left += 1
                right = max(left, right)
            }
        }

        print(minDiff)
    }
}
