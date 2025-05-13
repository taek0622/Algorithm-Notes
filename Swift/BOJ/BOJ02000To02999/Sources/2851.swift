//
//  2851.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/14/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2851
//  알고리즘 분류: 구현, 브루트포스 알고리즘, 누적 합

import Shared

public struct BOJ2851: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 242B
        var nums = [Int]()
        var sum = 0

        for _ in 0..<10 {
            nums.append(Int(readLine()!)!)
        }

        for num in nums where sum < 100 {
            sum += num

            if sum > 100 && sum - 100 > 100 - (sum - num) {
                sum -= num
                break
            }
        }

        print(sum)
    }
}
