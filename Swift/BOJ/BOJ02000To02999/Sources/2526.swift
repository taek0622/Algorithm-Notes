//
//  2526.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 7/18/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2523
//  알고리즘 분류: 구현

import Shared

public struct BOJ2526: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 223B
        let NP = readLine()!.split(separator: " ").map { Int($0)! }
        var now = NP[0]
        var nums = [Int]()

        while !nums.contains(now) {
            nums.append(now)
            now = now * NP[0] % NP[1]
        }

        print(nums.count - nums.firstIndex(of: now)!)
    }
}
