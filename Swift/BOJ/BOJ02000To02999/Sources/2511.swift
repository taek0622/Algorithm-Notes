//
//  2511.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 7/8/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2511
//  알고리즘 분류: 구현

import Shared

public struct BOJ2511: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 686B
        let A = readLine()!.split(separator: " ").map { Int($0)! }
        let B = readLine()!.split(separator: " ").map { Int($0)! }
        var result = Array(repeating: "", count: 10)
        var score = (A: 0, B: 0)

        for idx in 0..<10 {
            if A[idx] > B[idx] {
                result[idx] = "A"
                score.A += 3
            } else if A[idx] < B[idx] {
                result[idx] = "B"
                score.B += 3
            } else {
                result[idx] = "D"
                score.A += 1
                score.B += 1
            }
        }

        print("\(score.A) \(score.B)")

        if score.A == score.B {
            if score.A == 10 {
                print("D")
            } else {
                print(result.filter { $0 != "D" }.last!)
            }
        } else if score.A > score.B {
            print("A")
        } else {
            print("B")
        }
    }
}
