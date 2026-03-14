//
//  5179.swift
//  BOJ05000To05999
//
//  Created by 김이안 on 3/14/26.
//

//  문제 링크: https://www.acmicpc.net/problem/5179
//  알고리즘 분류: 구현, 정렬

import Shared

public struct BOJ5179: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69116KB, 시간: 4ms, 코드 길이: 1153B
        let K = Int(readLine()!)!

        for dataSet in 1...K {
            let MNP = readLine()!.split(separator: " ").map { Int($0)! }
            var scores = Array(repeating: 0, count: MNP[2])
            var wrong = Array(repeating: Array(repeating: 0, count: MNP[0]), count: MNP[2])

            for _ in 0..<MNP[1] {
                let pmtj = readLine()!.split(separator: " ").map { String($0) }
                let (p, m, t, j) = (Int(pmtj[0])! - 1, Int(pmtj[1].first!.asciiValue!) - 65, Int(pmtj[2])!, pmtj[3] == "1")

                if j && wrong[p][m] != -1 {
                    scores[p] += (t + wrong[p][m] * 20)
                    wrong[p][m] = -1
                } else if wrong[p][m] != -1 {
                    wrong[p][m] += 1
                }
            }

            let sortedScore = scores.enumerated().sorted {
                let solvedFront = wrong[$0.offset].filter { $0 == -1 }.count
                let solvedBack = wrong[$1.offset].filter { $0 == -1 }.count

                if solvedFront != solvedBack { return solvedFront > solvedBack }
                return $0.element < $1.element
            }

            print("Data Set \(dataSet):")
            print(sortedScore.map { "\($0.offset + 1) \(wrong[$0.offset].filter { $0 == -1 }.count) \($0.element)" }.joined(separator: "\n"))
            print()
        }
    }
}
