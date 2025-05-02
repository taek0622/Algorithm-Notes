//
//  4383.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/24/25.
//

//  문제 링크: https://www.acmicpc.net/problem/4383
//  알고리즘 분류: 구현

import Shared

public struct BOJ4383: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69276KB, 시간: 12ms, 코드 길이: 529B
        while let input = readLine() {
            let nums = input.split(separator: " ").map { Int($0)! }

            if nums[0] == 1 {
                print("Jolly")
                continue
            }

            var isContain = Array(repeating: false, count: nums[0] - 1)

            for idx in 1..<nums[0] {
                let diff = nums[idx] - nums[idx+1]

                if diff == 0 || diff > nums[0]-1 || -diff > nums[0]-1 {
                    break
                }

                isContain[diff > 0 ? diff - 1 : -diff - 1] = true
            }

            print(isContain.filter { !$0 }.count == 0 ? "Jolly" : "Not jolly")
        }
    }
}
