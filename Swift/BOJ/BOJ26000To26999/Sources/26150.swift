//
//  26150.swift
//  BOJ26000To26999
//
//  Created by 김민택 on 5/11/25.
//

//  문제 링크: https://www.acmicpc.net/problem/26150
//  알고리즘 분류: 구현, 문자열, 정렬

import Shared

public struct BOJ26150: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69112KB, 시간: 8ms, 코드 길이: 313B
        let N = Int(readLine()!)!
        var problems = [(String, Int)]()

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { String($0) }
            problems.append((input[0].map { String($0) }[Int(input[2])! - 1].uppercased(), Int(input[1])! - 1))
        }

        print(problems.sorted { $0.1 < $1.1 }.map { $0.0 }.joined())
    }
}
