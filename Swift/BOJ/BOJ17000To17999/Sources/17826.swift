//
//  17826.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/12/24.
//

//  문제 링크: https://www.acmicpc.net/problem/17826
//  알고리즘 분류: 구현

import Shared

public struct BOJ17826: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 410B
        let scores = readLine()!.split(separator: " ").map { Int($0)! }
        let score = Int(readLine()!)!
        let grade = scores.firstIndex(of: score)!

        switch grade {
            case 0..<5:
                print("A+")
            case 5..<15:
                print("A0")
            case 15..<30:
                print("B+")
            case 30..<35:
                print("B0")
            case 35..<45:
                print("C+")
            case 45..<48:
                print("C0")
            case 48..<50:
                print("F")
            default:
                break
        }
    }
}
