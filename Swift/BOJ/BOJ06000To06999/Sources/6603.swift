//
//  6603.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/29/23.
//

//  문제 링크: https://www.acmicpc.net/problem/6603
//  알고리즘 분류: 수학, 조합론, 백트래킹, 재귀

import Shared

public struct BOJ6603: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 12ms, 코드 길이: 507B
        while let input = readLine(), input != "0" {
            let kS = input.split(separator: " ").map { String($0) }
            let k = Int(kS[0])!
            let S = Array(kS[1...])

            for num in 0...(k-6) {
                generateNumber(num, [S[num]])
            }

            print()

            func generateNumber(_ start: Int, _ set: [String]) {
                if set.count == 6 {
                    print(set.joined(separator: " "))
                    return
                }

                for next in (start+1)..<k {
                    generateNumber(next, set + [S[next]])
                }
            }
        }
    }
}
