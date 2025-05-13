//
//  10798.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/05.
//

// 문제: https://www.acmicpc.net/problem/10798

import Shared

public struct BOJ10798: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69096KB, 시간: 8ms, 코드 길이: 252B
        var words = [[String]]()

        for _ in 0..<5 {
            let input = readLine()!.map { String($0) }
            words.append(input)
        }

        for column in 0..<15 {
            for row in 0..<5 where words[row].count > column {
                print(words[row][column], terminator: "")
            }
        }
    }
}
