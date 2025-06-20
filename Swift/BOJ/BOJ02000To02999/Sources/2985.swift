//
//  2985.swift
//  BOJ02000To02999
//
//  Created by 김민택 on 6/20/25.
//

//  문제 링크: https://www.acmicpc.net/problem/2985
//  알고리즘 분류: 수학, 구현, 사칙연산, 많은 조건 분기

import Shared

public struct BOJ2985: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 753B
        let nums = readLine()!.split(separator: " ").map { Int($0)! }

        if nums[0] + nums[1] == nums[2] {
            print("\(nums[0])+\(nums[1])=\(nums[2])")
        } else if nums[0] - nums[1] == nums[2] {
            print("\(nums[0])-\(nums[1])=\(nums[2])")
        } else if nums[0] * nums[1] == nums[2] {
            print("\(nums[0])*\(nums[1])=\(nums[2])")
        } else if nums[0] / nums[1] == nums[2] {
            print("\(nums[0])/\(nums[1])=\(nums[2])")
        } else if nums[0] == nums[1] + nums[2] {
            print("\(nums[0])=\(nums[1])+\(nums[2])")
        } else if nums[0] == nums[1] - nums[2] {
            print("\(nums[0])=\(nums[1])-\(nums[2])")
        } else if nums[0] == nums[1] * nums[2] {
            print("\(nums[0])=\(nums[1])*\(nums[2])")
        } else if nums[0] == nums[1] / nums[2] {
            print("\(nums[0])=\(nums[1])/\(nums[2])")
        }
    }
}
