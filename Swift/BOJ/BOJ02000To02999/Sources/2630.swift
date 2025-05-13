//
//  2630.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/28/23.
//

//  문제 링크: https://www.acmicpc.net/problem/2630
//  알고리즘 분류: 분할 정복, 재귀

import Shared

public struct BOJ2630: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69364KB, 시간: 16ms, 코드 길이: 836B
        let N = Int(readLine()!)!
        var paper = [[String]]()

        for _ in 0..<N {
            paper.append(readLine()!.split(separator: " ").map { String($0) })
        }

        let count = countPaper(N, 0, 0)

        print("\(count.filter { $0 == "0" }.count)\n\(count.filter { $0 == "1" }.count)")

        func countPaper(_ N: Int, _ rStart: Int, _ cStart: Int) -> String {
            if N == 1 {
                return paper[rStart][cStart]
            }

            let queue = [countPaper(N/2, rStart, cStart), countPaper(N/2, rStart, cStart+N/2), countPaper(N/2, rStart+N/2, cStart), countPaper(N/2, rStart+N/2, cStart+N/2)]
            var isCompression = true
            var compression = ""

            for idx in queue.indices {
                compression += queue[idx]

                if queue[idx] != queue[0] || queue[idx].count != 1 {
                    isCompression = false
                }
            }

            return isCompression ? queue[0] : compression
        }
    }
}
