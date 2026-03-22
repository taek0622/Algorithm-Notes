//
//  14003.swift
//  BOJ14000To14999
//
//  Created by 김이안 on 3/23/26.
//

//  문제 링크: https://www.acmicpc.net/problem/14003
//  알고리즘 분류: 이분 탐색, 역추적, 가장 긴 증가하는 부분 수열 문제

import Shared

public struct BOJ14003: Solvable {
    public init() {}

    public func run() {
        // 메모리: 144724KB, 시간: 596ms, 코드 길이: 890B
        let N = Int(readLine()!)!
        let A = readLine()!.split(separator: " ").map { Int($0)! }
        var lis = [-1_000_000_001]
        var maxSeq = Array(repeating: -1, count: N)
        var realLis = [Int]()

        for idx in 0..<N {
            if A[idx] > lis.last! {
                maxSeq[idx] = lis.count
                lis.append(A[idx])
                continue
            }

            var left = 1
            var right = lis.count - 1

            while left < right {
                let mid = (left + right) >> 1

                if lis[mid] < A[idx] {
                    left = mid + 1
                } else {
                    right = mid
                }
            }

            lis[right] = A[idx]
            maxSeq[idx] = right
        }

        var findTarget = lis.count - 1

        for idx in stride(from: N-1, through: 0, by: -1) where findTarget == maxSeq[idx] && (realLis.isEmpty || A[idx] < realLis.last!) {
            realLis.append(A[idx])
            findTarget -= 1
        }

        print("\(lis.count - 1)\n\(realLis.reversed().map { String($0) }.joined(separator: " "))")
    }
}
