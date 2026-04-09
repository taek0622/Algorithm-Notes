//
//  2467.swift
//  BOJ02000To02999
//
//  Created by 김이안 on 4/9/26.
//

//  문제 링크: https://www.acmicpc.net/problem/2467
//  알고리즘 분류: 이분 탐색, 두 포인터

import Shared

public struct BOJ2467: Solvable {
    public init() {}

    public func run() {
        // 메모리: 78392KB, 시간: 60ms, 코드 길이: 459B
        let N = Int(readLine()!)!
        let liquid = readLine()!.split(separator: " ").map { Int($0)! }
        var left = 0
        var right = N-1
        var minMixed = (Int.max, 0, N-1)

        while left < right {
            let sum = liquid[left] + liquid[right]

            if abs(minMixed.0) > abs(sum) {
                minMixed = (sum, left, right)
            }

            if sum == 0 {
                break
            } else if sum > 0 {
                right -= 1
            } else {
                left += 1
            }
        }

        print(liquid[minMixed.1], liquid[minMixed.2])
    }
}
