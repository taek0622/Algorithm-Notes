//
//  10973.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/20/25.
//

//  문제 링크: https://www.acmicpc.net/problem/10973
//  알고리즘 분류: 수학, 구현, 조합론

import Shared

public struct BOJ10973: Solvable {
    public init() {}

    public func run() {
        // 메모리: 70024KB, 시간: 12ms, 코드 길이: 513B
        let N = Int(readLine()!)!
        var nums = readLine()!.split(separator: " ").map { Int($0)! }

        if nums == Array(1...N) {
            print(-1)
        } else {
            for idx in stride(from: N-2, through: 0, by: -1) {
                if nums[idx...].min()! == nums[idx] {
                    continue
                }

                nums.swapAt(idx, nums.firstIndex(of: nums[idx...].sorted()[nums[idx...].sorted().firstIndex(of: nums[idx])! - 1])!)
                nums[(idx+1)...].sort(by: >)
                break
            }

            print( nums.map { String($0) }.joined(separator: " "))
        }
    }
}
