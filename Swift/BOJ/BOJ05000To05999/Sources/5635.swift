//
//  5635.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 5/30/24.
//

//  문제 링크: https://www.acmicpc.net/problem/5635
//  알고리즘 분류: 구현, 문자열, 정렬

import Shared

public struct BOJ5635: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69112KB, 시간: 8ms, 코드 길이: 311B
        let n = Int(readLine()!)!
        var students = [(Int, Int, Int, String)]()

        for _ in 0..<n {
            let input = readLine()!.split(separator: " ").map { String($0) }
            students.append((Int(input[3])!, Int(input[2])!, Int(input[1])!, input[0]))
        }

        students.sort(by: >)

        print("\(students.first!.3)\n\(students.last!.3)")
    }
}
