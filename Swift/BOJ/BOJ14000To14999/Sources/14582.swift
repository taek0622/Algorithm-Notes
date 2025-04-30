//
//  14582.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 8/6/24.
//

//  문제 링크: https://www.acmicpc.net/problem/14582
//  알고리즘 분류: 구현

class BOJ14582: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 332B
        var isReversal = false
        let geminies = readLine()!.split(separator: " ").map { Int($0)! }
        let startlink = readLine()!.split(separator: " ").map { Int($0)! }
        var score = 0

        for idx in 0..<9 {
            score += geminies[idx]

            if score > 0 {
                isReversal = true
            }

            score -= startlink[idx]
        }

        print(isReversal ? "Yes": "No")
    }
}
