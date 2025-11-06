//
//  2756.swift
//  BOJ02000To02999
//
//  Created by 김민택 on 11/6/25.
//

//  문제 링크: https://www.acmicpc.net/problem/2755
//  알고리즘 분류: 수학, 구현, 기하학, 피타고라스 정리

import Shared

public struct BOJ2756: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 16ms, 코드 길이: 1035B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let darts = readLine()!.split(separator: " ").map { Double($0)! }
            var (N, M) = (0, 0)

            for idx in stride(from: 0, to: 6, by: 2) {
                let dist = darts[idx] * darts[idx] + darts[idx+1] * darts[idx+1]

                if 0...9 ~= dist {
                    N += 100
                } else if ...36 ~= dist {
                    N += 80
                } else if ...81 ~= dist {
                    N += 60
                } else if ...144 ~= dist {
                    N += 40
                } else if ...225 ~= dist {
                    N += 20
                }
            }

            for idx in stride(from: 6, to: 12, by: 2) {
                let dist = darts[idx] * darts[idx] + darts[idx+1] * darts[idx+1]

                if 0...9 ~= dist {
                    M += 100
                } else if ...36 ~= dist {
                    M += 80
                } else if ...81 ~= dist {
                    M += 60
                } else if ...144 ~= dist {
                    M += 40
                } else if ...225 ~= dist {
                    M += 20
                }
            }

            print("SCORE: \(N) to \(M), \(N == M ? "TIE" : "PLAYER \(N > M ? 1 : 2) WINS").")
        }
    }
}
