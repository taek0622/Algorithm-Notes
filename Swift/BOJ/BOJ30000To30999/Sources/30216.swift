//
//  30216.swift
//  BOJ30000To30999
//
//  Created by 김민택 on 1/18/26.
//

//  문제 링크: https://www.acmicpc.net/problem/30216
//  알고리즘 분류: 수학, 구현, 브루트포스 알고리즘

import Shared

public struct BOJ30216: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 278B
        let n = Int(readLine()!)!
        let nums = readLine()!.split(separator: " ").map { Int($0)! }
        var (leng, maxLeng) = (1, 1)

        for idx in 1..<n {
            if nums[idx-1] < nums[idx] {
                leng += 1
                maxLeng = max(maxLeng, leng)
            } else {
                leng = 1
            }
        }

        print(maxLeng)
    }
}
