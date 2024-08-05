//
//  2456.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 8/5/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2456
//  알고리즘 분류: 구현, 많은 조건 분기

class BOJ2456: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 648B
        let N = Int(readLine()!)!
        var votes = [[0, 0, 0], [0, 0, 0]]
        var win = 0

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { Int($0)! }

            for idx in 0..<3 {
                votes[0][idx] += input[idx]
                votes[1][idx] += input[idx] * input[idx]
            }
        }

        let maxScore = max(votes[0][0], votes[0][1], votes[0][2])

        if votes[0].filter { $0 == maxScore }.count == 1 {
            win = votes[0].firstIndex(of: maxScore)! + 1
        } else {
            let nextMax = max(votes[1][0], votes[1][1], votes[1][2])

            if votes[1].filter { $0 == nextMax }.count == 1 {
                win = votes[1].firstIndex(of: nextMax)! + 1
            }
        }

        print("\(win) \(maxScore)")
    }
}
