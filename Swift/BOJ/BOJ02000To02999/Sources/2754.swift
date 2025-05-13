//
//  2754.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2754
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ2754: Solvable {
    public init() {}

    public func run() {
        solution1()
    }

    private func solution1() {
        let score = String(readLine()!)

        switch score {
        case "A+":
            print(4.3)
        case "A0":
            print(4.0)
        case "A-":
            print(3.7)
        case "B+":
            print(3.3)
        case "B0":
            print(3.0)
        case "B-":
            print(2.7)
        case "C+":
            print(2.3)
        case "C0":
            print(2.0)
        case "C-":
            print(1.7)
        case "D+":
            print(1.3)
        case "D0":
            print(1.0)
        case "D-":
            print(0.7)
        case "F":
            print(0.0)
        default:
            print(0.0)
        }
    }

    // 메모리: 69096KB, 시간: 12ms, 코드 길이: 2478B
    private func solution2() {
        let grade = ["A+": 4.3, "A0": 4.0, "A-": 3.7,
                     "B+": 3.3, "B0": 3.0, "B-": 2.7,
                     "C+": 2.3, "C0": 2.0, "C-": 1.7,
                     "D+": 1.3, "D0": 1.0, "D-": 0.7,
                     "F": 0.0]

        print(grade[readLine()! ,default: 0.0])
    }
}
