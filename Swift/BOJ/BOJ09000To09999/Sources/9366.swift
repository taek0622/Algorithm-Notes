//
//  9366.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/28/24.
//

//  문제 링크: https://www.acmicpc.net/problem/9366
//  알고리즘 분류: 수학, 구현, 기하학, 사칙연산, 많은 조건 분기

class BOJ9366: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 440B
        let T = Int(readLine()!)!

        for idx in 1...T {
            let ABC = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
            let (A, B, C) = (ABC[0], ABC[1], ABC[2])

            print("Case #\(idx): ", terminator: "")

            if A + B <= C {
                print("invalid!")
            } else if A == B && B == C {
                print("equilateral")
            } else if (A == B) || (B == C) || (C == A) {
                print("isosceles")
            } else {
                print("scalene")
            }
        }
    }
}
