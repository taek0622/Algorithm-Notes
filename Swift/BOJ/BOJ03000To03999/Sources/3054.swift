//
//  3054.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/31/24.
//

//  문제 링크: https://www.acmicpc.net/problem/3054
//  알고리즘 분류: 구현

import Shared

public struct BOJ3054: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 909B
        let word = readLine()!.map { String($0) }

        for row in 0..<5 {
            if row == 2 {
                var line = ""

                for col in word.indices {
                    line += (col + 1) % 3 == 0 ? "*" : col == 0 || col % 3 != 0 ? "#" : ""
                    line += "."
                    line += word[col]
                    line += "."
                    line += (col + 1) % 3 == 0 ? "*" : ""
                }

                print(line + (word.count % 3 != 0 ? "#" : ""))
            } else if row == 0 || row == 4 {
                var line = ""

                for col in word.indices {
                    line += ".."
                    line += (col + 1) % 3 == 0 ? "*" : "#"
                    line += "."
                }

                print(line + ".")
            } else {
                var line = ""

                for col in word.indices {
                    line += "."
                    line += (col + 1) % 3 == 0 ? "*" : "#"
                    line += "."
                    line += (col + 1) % 3 == 0 ? "*" : "#"
                }

                print(line + ".")
            }
        }
    }
}
