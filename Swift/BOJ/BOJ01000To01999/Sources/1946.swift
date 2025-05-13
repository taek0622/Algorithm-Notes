//
//  1946.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/7/23.
//

//  문제 링크: https://www.acmicpc.net/problem/1946
//  알고리즘 분류: 그리디 알고리즘, 정렬

import Shared
import Utility

public struct BOJ1946: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 125524KB, 시간: 472ms, 코드 길이: 1369B
    private func solution1() {
        let fileIO = RhynoFileIO()
        let T = fileIO.readInt()

        for _ in 0..<T {
            let N = fileIO.readInt()
            var applicants = Array(repeating: (0, 0), count: N)
            var count = 1

            for idx in 0..<N {
                applicants[idx] = (fileIO.readInt(), fileIO.readInt())
            }

            applicants.sort {
                $0.0 < $1.0
            }

            var base = applicants[0].1

            for idx in 0..<N where base > applicants[idx].1 {
                base = applicants[idx].1
                count += 1
            }

            print(count)
        }
    }

    // 메모리: 125520KB, 시간: 296ms, 코드 길이: 1308B
    private func solution2() {
        let fileIO = RhynoFileIO()
        let T = fileIO.readInt()

        for _ in 0..<T {
            let N = fileIO.readInt()
            var applicants = Array(repeating: 0, count: N)
            var count = 1

            for _ in 0..<N {
                applicants[fileIO.readInt() - 1] = fileIO.readInt() - 1
            }

            var base = applicants[0]

            for idx in 0..<N where base > applicants[idx] {
                base = applicants[idx]
                count += 1
            }

            print(count)
        }
    }
}
