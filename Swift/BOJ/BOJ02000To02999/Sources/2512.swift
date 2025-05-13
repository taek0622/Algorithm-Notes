//
//  2512.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/10/23.
//

//  문제 링크: https://www.acmicpc.net/problem/2512
//  알고리즘 분류: 이분 탐색, 매개 변수 탐색

import Shared

public struct BOJ2512: Solvable {
    public init() {}

    public func run() {
        // 메모리: 70020KB, 시간: 12ms, 코드 길이: 444B
        let N = Int(readLine()!)!
        let requests = readLine()!.split(separator: " ").map { Int(String($0))! }
        let totalBudget = Int(readLine()!)!
        var (left, right) = (0, requests.max()!)

        while left <= right {
            let mid = (left + right) / 2
            var sum = 0

            for request in requests {
                sum += request > mid ? mid : request
            }

            if totalBudget >= sum {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }

        print(left - 1)
    }
}
