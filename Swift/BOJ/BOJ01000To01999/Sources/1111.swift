//
//  1111.swift
//  BOJ01000To01999
//
//  Created by 김민택 on 6/2/25.
//

//  문제 링크: https://www.acmicpc.net/problem/1111
//  알고리즘 분류: 수학, 구현, 브루트포스 알고리즘, 많은 조건 분기

import Shared

public struct BOJ1111: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 674B
        let N = Int(readLine()!)!
        let nums = readLine()!.split(separator: " ").map { Int($0)! }
        var answers = Set<Int>()

        if N == 1 {
            print("A")
        } else {
            var a = -198
            var b = nums[1] - nums[0] * a

            while -198...198 ~= a {
                var isOk = true

                for idx in stride(from: 0, to: N-1, by: 1) where nums[idx] * a + b != nums[idx+1] {
                    isOk = false
                    break
                }

                if isOk {
                    answers.insert(nums.last! * a + b)
                }

                if answers.count > 1 {
                    break
                }

                a += 1
                b = nums[1] - nums[0] * a
            }

            print(answers.count == 1 ? answers.first! : answers.count == 0 ? "B" : "A")
        }
    }
}
