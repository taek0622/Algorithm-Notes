//
//  23881.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/16/24.
//

//  문제 링크: https://www.acmicpc.net/problem/23881
//  알고리즘 분류: 구현, 정렬, 시뮬레이션

class BOJ23881: Solvable {
    func run() {
        // 메모리: 70116KB, 시간: 44ms, 코드 길이: 476B
        let NK = readLine()!.split(separator: " ").map { Int($0)! }
        var A = readLine()!.split(separator: " ").map { Int($0)! }
        var count = 0

        for lastIdx in stride(from: NK[0] - 1, through: 0, by: -1) {
            let maxIdx = A.firstIndex(of: A[0...lastIdx].max()!)!

            if lastIdx != maxIdx {
                count += 1

                if count == NK[1] {
                    print(A[lastIdx], A[maxIdx])
                    break
                }

                A.swapAt(lastIdx, maxIdx)
            }
        }

        if count < NK[1] {
            print(-1)
        }
    }
}
