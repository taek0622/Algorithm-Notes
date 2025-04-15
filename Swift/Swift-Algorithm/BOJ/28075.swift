//
//  28075.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/15/25.
//

//  문제 링크: https://www.acmicpc.net/problem/28075
//  알고리즘 분류: 구현, 브루트포스 알고리즘, 재귀

class BOJ28075: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 64ms, 코드 길이: 908B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var mission = Array(repeating: Array(repeating: 0, count: 3), count: 2)
        var count = 0

        for row in 0..<2 {
            mission[row] = readLine()!.split(separator: " ").map { Int($0)! }
        }

        for row in 0..<2 {
            for col in 0..<3 {
                clearMission(NM[0], -1, row, col, 0)
            }
        }

        print(count)

        func clearMission(_ remainDays: Int, _ prev: Int, _ row: Int, _ col: Int, _ rate: Int) {
            if remainDays == 0 {
                if rate >= NM[1] {
                    count += 1
                }

                return
            }

            let rate = rate + (prev != col ? mission[row][col] : mission[row][col] / 2)

            if rate >= NM[1] {
                var num = 1

                for _ in 0..<remainDays-1 {
                    num *= 6
                }

                count += num

                return
            }

            for nr in 0..<2 {
                for nc in 0..<3 {
                    clearMission(remainDays - 1, col, nr, nc, rate)
                }
            }
        }
    }
}
