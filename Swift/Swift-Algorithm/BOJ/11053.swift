//
//  11053.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/18/23.
//

//  문제 링크: https://www.acmicpc.net/problem/11053
//  알고리즘 분류: 다이나믹 프로그래밍

class BOJ11053: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69104KB, 시간: 16ms, 코드 길이: 276B
    private func solution1() {
        let N = Int(readLine()!)!
        let A = readLine()!.split(separator: " ").map { Int(String($0))! }
        var seq = Array(repeating: 1, count: N)

        for idx in 0..<N {
            for comp in 0..<idx where A[comp] < A[idx] {
                seq[idx] = max(seq[idx], seq[comp] + 1)
            }
        }

        print(seq.max()!)
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 504B
    private func solution2() {
        let N = Int(readLine()!)!
        let A = readLine()!.split(separator: " ").map { Int(String($0))! }
        var seq = [A[0]]

        for idx in 1..<N {
            if A[idx] > seq.last! {
                seq.append(A[idx])
            } else {
                var min = 0
                var max = seq.count - 1

                while min < max {
                    let mid = (min + max) / 2

                    if seq[mid] < A[idx] {
                        min = mid + 1
                    } else {
                        max = mid
                    }
                }

                seq[max] = A[idx]
            }
        }

        print(seq.count)
    }
}
