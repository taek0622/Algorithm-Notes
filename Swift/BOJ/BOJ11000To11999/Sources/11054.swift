//
//  11054.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/18/23.
//

//  문제 링크: https://www.acmicpc.net/problem/11054
//  알고리즘 분류: 다이나믹 프로그래밍

import Shared

public struct BOJ11054: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69104KB, 시간: 24ms, 코드 길이: 551B
    private func solution1() {
        let N = Int(readLine()!)!
        let A = readLine()!.split(separator: " ").map { Int(String($0))! }
        let revA = Array(A.reversed())
        var seq = Array(repeating: 1, count: N)
        var revSeq = seq

        for idx in 1..<N {
            for prev in 0..<idx {
                if A[idx] > A[prev] {
                    seq[idx] = max(seq[idx], seq[prev] + 1)
                }

                if revA[idx] > revA[prev] {
                    revSeq[idx] = max(revSeq[idx], revSeq[prev] + 1)
                }
            }
        }

        var result = 0

        for idx in 0..<N {
            result = max(result, seq[idx] + revSeq.reversed()[idx] - 1)
        }

        print(result)
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 797B
    private func solution2() {
        let N = Int(readLine()!)!
        let A = readLine()!.split(separator: " ").map { Int(String($0))! }
        var lis = LIS(A)
        let lisRev = Array(LIS(A.reversed()).reversed())

        for idx in lisRev.indices {
            lis[idx] += lisRev[idx]
        }

        print(lis.max()! - 1)

        func LIS(_ array: [Int]) -> [Int] {
            var dp = [array[0]]
            var seq = Array(repeating: 1, count: N)

            for idx in 0..<N {
                var min = 0
                var max = dp.count

                while min < max {
                    let mid = (min + max) / 2

                    if dp[mid] < array[idx] {
                        min = mid + 1
                    } else {
                        max = mid
                    }
                }

                if max == dp.count {
                    dp.append(array[idx])
                } else {
                    dp[max] = array[idx]
                }

                seq[idx] = max + 1
            }

            return seq
        }
    }
}
