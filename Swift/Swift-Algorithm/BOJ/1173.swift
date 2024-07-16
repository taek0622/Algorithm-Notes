//
//  1173.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 7/16/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1173
//  알고리즘 분류: 구현, 시뮬레이션

class BOJ1173: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 415B
        var NmMTR = readLine()!.split(separator: " ").map { Int($0)! }
        var (time, pulse) = (0, NmMTR[1])

        while NmMTR[0] > 0 {
            if NmMTR[2] - NmMTR[1] < NmMTR[3] {
                time = -1
                break
            }

            if pulse + NmMTR[3] > NmMTR[2] {
                pulse -= NmMTR[4]
            } else {
                pulse += NmMTR[3]
                NmMTR[0] -= 1
            }

            if pulse < NmMTR[1] {
                pulse = NmMTR[1]
            }

            time += 1
        }

        print(time)
    }
}
