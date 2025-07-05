//
//  4493.swift
//  BOJ04000To04999
//
//  Created by 김민택 on 7/5/25.
//

//  문제 링크: https://www.acmicpc.net/problem/4493
//  알고리즘 분류: 구현

import Shared

public struct BOJ4493: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 48ms, 코드 길이: 552B
        let t = Int(readLine()!)!

        for _ in 0..<t {
            let n = Int(readLine()!)!
            var score = (0, 0)

            for _ in 0..<n {
                let input = readLine()!.split(separator: " ").map { String($0) }

                if input[0] == input[1] {
                    continue
                } else if (input[0] == "R" && input[1] == "S") || (input[0] == "S" && input[1] == "P") || (input[0] == "P" && input[1] == "R") {
                    score.0 += 1
                } else {
                    score.1 += 1
                }
            }

            print(score.0 == score.1 ? "TIE" : "Player \(score.0 > score.1 ? "1" : "2")")
        }
    }
}
