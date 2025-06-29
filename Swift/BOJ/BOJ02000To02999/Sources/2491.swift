//
//  2491.swift
//  BOJ02000To02999
//
//  Created by 김민택 on 6/29/25.
//

//  문제 링크: https://www.acmicpc.net/problem/2491
//  알고리즘 분류: 구현, 다이나믹 프로그래밍

import Shared

public struct BOJ2491: Solvable {
    public init() {}

    public func run() {
        // 메모리: 75644KB, 시간: 24ms, 코드 길이: 445B
        let N = Int(readLine()!)!
        let nums = readLine()!.split(separator: " ").map { Int($0)! }
        var (asc, desc, maxAsc, maxDesc) = (1, 1, 1, 1)

        for idx in 1..<N {
            if nums[idx-1] < nums[idx] {
                asc += 1
                desc = 1
            } else if nums[idx-1] > nums[idx] {
                desc += 1
                asc = 1
            } else {
                asc += 1
                desc += 1
            }

            maxAsc = max(maxAsc, asc)
            maxDesc = max(maxDesc, desc)
        }

        print(max(maxAsc, maxDesc))
    }
}
