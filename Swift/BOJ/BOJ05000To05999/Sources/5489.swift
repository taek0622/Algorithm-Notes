//
//  5489.swift
//  BOJ05000To05999
//
//  Created by 김민택 on 2/11/26.
//

//  문제 링크: https://www.acmicpc.net/problem/5489
//  알고리즘 분류: 구현

import Shared

public struct BOJ5489: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 196B
        let N = Int(readLine()!)!
        var nums = [Int: Int]()

        for _ in 0..<N {
            nums[Int(readLine()!)!, default: 0] += 1
        }

        print(nums.filter { $0.value == nums.values.max()! }.map { $0.key }.sorted()[0])
    }
}
