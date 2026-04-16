//
//  22862.swift
//  BOJ22000To22999
//
//  Created by 김이안 on 4/16/26.
//

//  문제 링크: https://www.acmicpc.net/problem/22862
//  알고리즘 분류: 두 포인터

import Shared

public struct BOJ22862: Solvable {
    public init() {}

    public func run() {
        // 메모리: 133212KB, 시간: 388ms, 코드 길이: 598B
        let NK = readLine()!.split(separator: " ").map { Int($0)! }
        let S = readLine()!.split(separator: " ").map { Int($0)! }
        var left = 0
        var right = 0
        var oddCount = 0
        var maxEven = 0

        if S[right] % 2 == 0 {
            maxEven = 1
        } else {
            oddCount = 1
        }

        while right < NK[0] && left <= right {
            right += 1

            if right >= NK[0] {
                break
            }

            if S[right] % 2 != 0 {
                oddCount += 1
            }

            while oddCount > NK[1] {
                if S[left] % 2 != 0 {
                    oddCount -= 1
                }

                left += 1
            }

            maxEven = max(maxEven, right - left + 1 - oddCount)
        }

        print(maxEven)
    }
}
