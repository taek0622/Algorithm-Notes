//
//  2997.swift
//  BOJ02000To02999
//
//  Created by 김민택 on 7/6/25.
//

//  문제 링크: https://www.acmicpc.net/problem/2997
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ2997: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 386B
        let nums = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
        let diff = min(nums[1] - nums[0], nums[2] - nums[1])

        if nums[1] - nums[0] == nums[2] - nums[1] {
            if -100...100 ~= nums[2] - diff {
                print(nums[2] + diff)
            } else {
                print(nums[0] - diff)
            }
        } else if nums[1] - nums[0] == diff {
            print(nums[1] + diff)
        } else {
            print(nums[0] + diff)
        }
    }
}
