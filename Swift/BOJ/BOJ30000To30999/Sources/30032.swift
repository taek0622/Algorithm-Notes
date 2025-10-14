//
//  30032.swift
//  BOJ30000To30999
//
//  Created by 김민택 on 10/14/25.
//

//  문제 링크: https://www.acmicpc.net/problem/30032
//  알고리즘 분류: 구현

import Shared

public struct BOJ30032: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 562B
        let ND = readLine()!.split(separator: " ").map { Int($0)! }
        var alpha = Array(repeating: Array(repeating: "", count: ND[0]), count: ND[0])

        for idx in 0..<ND[0] {
            alpha[idx] = readLine()!.map { flip(String($0)) }
        }

        print(alpha.map { $0.joined() }.joined(separator: "\n"))

        func flip(_ char: String) -> String {
            switch char {
                case "d": return ND[1] == 1 ? "q" : "b"
                case "b": return ND[1] == 1 ? "p" : "d"
                case "q": return ND[1] == 1 ? "d" : "p"
                case "p": return ND[1] == 1 ? "b" : "q"
                default: return char
            }
        }
    }
}
