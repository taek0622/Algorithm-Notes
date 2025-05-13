//
//  24090.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/18/25.
//

//  문제 링크: https://www.acmicpc.net/problem/24090
//  알고리즘 분류: 구현, 정렬

import Shared

public struct BOJ24090: Solvable {
    public init() {}

    public func run() {
        // 메모리: 70116KB, 시간: 784ms, 코드 길이: 910B
        let NK = readLine()!.split(separator: " ").map { Int($0)! }
        var A = readLine()!.split(separator: " ").map { Int($0)! }
        var change = (0, -1 , -1)
        quickSort(p: 0, r: A.count-1)
        print(change.0 >= NK[1] ? "\(change.1) \(change.2)" : -1)

        func quickSort(p: Int, r: Int) {
            if p < r {
                let q = partition(p: p, r: r)
                quickSort(p: p, r: q-1)
                quickSort(p: q+1, r: r)
            }
        }

        func partition(p: Int, r: Int) -> Int {
            let x = A[r]
            var i = p - 1

            for j in p...r-1 {
                if A[j] <= x {
                    i += 1
                    A.swapAt(i, j)
                    change.0 += 1

                    if NK[1] == change.0 {
                        change.1 = A[i]
                        change.2 = A[j]
                    }
                }
            }

            if i + 1 != r {
                A.swapAt(i+1, r)
                change.0 += 1

                if NK[1] == change.0 {
                    change.1 = A[i+1]
                    change.2 = A[r]
                }
            }

            return i + 1
        }
    }
}
