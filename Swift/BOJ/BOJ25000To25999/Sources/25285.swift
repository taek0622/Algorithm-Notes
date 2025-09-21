//
//  25285.swift
//  BOJ25000To25999
//
//  Created by 김민택 on 9/21/25.
//

//  문제 링크: https://www.acmicpc.net/problem/25285
//  알고리즘 분류: 구현, 많은 조건 분기

import Shared

public struct BOJ25285: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 856B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let ck = readLine()!.split(separator: " ").map { Double($0)! }
            let bmi = ck[1] / (ck[0] * ck[0] / 10000)
            var grade = 6

            switch ck[0] {
                case 204...:
                    grade = 4
                case 161...:
                    if 20.0..<25.0 ~= bmi {
                        grade = 1
                    } else if 18.5..<20.0 ~= bmi || 25.0..<30.0 ~= bmi {
                        grade = 2
                    } else if 16.0..<18.5 ~= bmi || 30.0..<35.0 ~= bmi {
                        grade = 3
                    } else {
                        grade = 4
                    }
                case 159...:
                    if 16.0..<35.0 ~= bmi {
                        grade = 3
                    } else {
                        grade = 4
                    }
                case 146...:
                    grade = 4
                case 140.1...:
                    grade = 5
                default:
                    break
            }

            print(grade)
        }
    }
}
