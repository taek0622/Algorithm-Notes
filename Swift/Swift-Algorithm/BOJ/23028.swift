//
//  23028.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/29/25.
//

//  문제 링크: https://www.acmicpc.net/problem/23028
//  알고리즘 분류: 구현, 그리디 알고리즘

struct BOJ23028: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 336B
        var NAB = readLine()!.split(separator: " ").map { Int($0)! }

        for _ in 0..<10 {
            let XY = readLine()!.split(separator: " ").map { Int($0)! }

            if NAB[0] < 8 {
                NAB[0] += 1
                NAB[1] += min(XY[0], 6) * 3
                NAB[2] += min(XY.reduce(0, +), 6) * 3
            }
        }

        print(NAB[1] >= 66 && NAB[2] >= 130 ? "Nice" : "Nae ga wae")
    }
}
