//
//  20922.swift
//  BOJ20000To20999
//
//  Created by 김이안 on 4/18/26.
//

//  문제 링크: https://www.acmicpc.net/problem/20546
//  알고리즘 분류: 두 포인터

import Shared

public struct BOJ20922: Solvable {
    public init() {}

    public func run() {
        // 메모리: 84644KB, 시간: 80ms, 코드 길이: 514B
        let NK = readLine()!.split(separator: " ").map { Int($0)! }
        let a = readLine()!.split(separator: " ").map { Int($0)! }
        var numCount = Array(repeating: 0, count: 100001)
        var maxLength = 1
        var left = 0
        var right = 0
        numCount[a[right]] += 1

        while left <= right {
            right += 1

            if right >= NK[0] {
                break
            }

            numCount[a[right]] += 1

            while numCount[a[right]] > NK[1] {
                numCount[a[left]] -= 1
                left += 1
            }

            maxLength = max(maxLength, right - left + 1)
        }

        print(maxLength)
    }
}
