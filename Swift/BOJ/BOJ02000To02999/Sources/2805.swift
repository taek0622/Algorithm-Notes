//
//  2805.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/5/23.
//

//  문제 링크: https://www.acmicpc.net/problem/2805
//  알고리즘 분류: 이분 탐색, 매개 변수 탐색

import Shared

public struct BOJ2805: Solvable {
    public init() {}

    public func run() {
        // 메모리: 145408KB, 시간: 580ms, 코드 길이: 625B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        let tree = readLine()!.split(separator: " ").map { Int($0)! }
        var visited = Set<Int>()
        var (left, right) = (0, tree.max()!)
        var mid = right / 2

        while true {
            var sum = 0

            for idx in 0..<NM[0] where tree[idx] >  mid {
                sum += tree[idx] - mid
            }

            if sum == NM[1] {
                break
            } else if sum > NM[1] {
                if !visited.insert(mid+1).inserted {
                    break
                }

                left = mid
            } else if mid == 0 {
                break
            } else {
                right = mid
            }

            visited.insert(mid)
            mid = (left + right) / 2
        }

        print(mid)
    }
}
