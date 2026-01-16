//
//  26583.swift
//  BOJ26000To26999
//
//  Created by 김민택 on 1/16/26.
//

//  문제 링크: https://www.acmicpc.net/problem/26583
//  알고리즘 분류: 수학, 구현, 문자열, 사칙연산, 파싱

import Shared

public struct BOJ26583: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 4ms, 코드 길이: 521B
        while let input = readLine() {
            let nums = input.split(separator: " ").map { Int($0)! }
            var result = ""

            for idx in nums.indices {
                if idx == nums.count - 1 && idx == 0 {
                    result += "\(nums[idx])"
                } else if idx == nums.count - 1 {
                    result += "\(nums[idx-1] * nums[idx])"
                } else if idx == 0 {
                    result += "\(nums[idx] * nums[idx + 1]) "
                } else {
                    result += "\(nums[idx-1] * nums[idx] * nums[idx+1]) "
                }
            }

            print(result)
        }
    }
}
