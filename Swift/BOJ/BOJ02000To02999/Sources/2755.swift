//
//  2755.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 8/17/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2755
//  알고리즘 분류: 수학, 구현, 사칙연산

import Foundation

class BOJ2755: Solvable {
    func run() {
        // 메모리: 79516KB, 시간: 8ms, 코드 길이: 512B
        let grade = ["A+": 4.3, "A0": 4.0, "A-": 3.7, "B+": 3.3, "B0": 3.0, "B-": 2.7, "C+": 2.3, "C0": 2.0, "C-": 1.7, "D+": 1.3, "D0": 1.0, "D-": 0.7, "F": 0.0]
        let N = Int(readLine()!)!
        var totalScore = 0.0
        var totalGrade = 0.0

        for _ in 0..<N {
            let subject = readLine()!.split(separator: " ").map { String($0) }
            let score = Double(subject[1])!
            totalScore += score
            totalGrade += score * grade[subject[2]]!
        }

        print(String(format: "%.2f", round(totalGrade / totalScore * 100) / 100))
    }
}
