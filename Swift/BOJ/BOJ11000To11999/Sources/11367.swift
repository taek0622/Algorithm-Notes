//
//  11367.swift
//  BOJ11000To11999
//
//  Created by 김민택 on 8/23/25.
//

//  문제 링크: https://www.acmicpc.net/problem/11367
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ11367: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 4ms, 코드 길이: 575B
        let n = Int(readLine()!)!

        for _ in 0..<n {
            let ab = readLine()!.split(separator: " ").map { String($0) }
            let b = Int(ab[1])!
            var grade = ""

            if b >= 97 {
                grade = "A+"
            } else if b >= 90 {
                grade = "A"
            } else if b >= 87 {
                grade = "B+"
            } else if b >= 80 {
                grade = "B"
            } else if b >= 77 {
                grade = "C+"
            } else if b >= 70 {
                grade = "C"
            } else if b >= 67 {
                grade = "D+"
            } else if b >= 60 {
                grade = "D"
            } else {
                grade = "F"
            }

            print("\(ab[0]) \(grade)")
        }
    }
}
