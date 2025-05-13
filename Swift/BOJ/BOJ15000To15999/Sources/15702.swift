//
//  15702.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/18/25.
//

//  문제 링크: https://www.acmicpc.net/problem/15702
//  알고리즘 분류: 구현, 정렬

import Shared

public struct BOJ15702: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 526B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        let points = readLine()!.split(separator: " ").map { Int($0)! }
        var maxStudent = (100001, 0)

        for _ in 0..<NM[1] {
            let input = readLine()!.split(separator: " ")
            let num = Int(input[0])!
            var score = 0

            for idx in 1...NM[0] where input[idx] == "O" {
                score += points[idx-1]
            }

            if (score > maxStudent.1) || (score == maxStudent.1 && num < maxStudent.0) {
                maxStudent = (num, score)
            }
        }

        print("\(maxStudent.0) \(maxStudent.1)")
    }
}
