//
//  5800.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/25/24.
//

//  문제 링크: https://www.acmicpc.net/problem/5800
//  알고리즘 분류: 구현, 정렬

class BOJ5800: Solvable {
    func run() {
        // 메모리: 69112KB, 시간: 8ms, 코드 길이: 449B
        let K = Int(readLine()!)!

        for idx in 1...K {
            let nStudents = readLine()!.split(separator: " ").map { Int($0)! }
            let (N, students) = (nStudents[0], nStudents[1...].sorted(by: >))
            var maxGap = 0

            for gapIdx in 1..<N where students[gapIdx - 1] - students[gapIdx] > maxGap {
                maxGap = students[gapIdx - 1] - students[gapIdx]
            }

            print("Class \(idx)\nMax \(students.first!), Min \(students.last!), Largest gap \(maxGap)")
        }
    }
}
