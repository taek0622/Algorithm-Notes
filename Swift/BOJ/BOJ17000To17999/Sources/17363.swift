//
//  17363.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 9/18/24.
//

//  문제 링크: https://www.acmicpc.net/problem/17363
//  알고리즘 분류: 구현

import Shared

public struct BOJ17363: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69240KB, 시간: 8ms, 코드 길이: 462B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        let dict = [".": ".", "O": "O", "-": "|", "|": "-", "/": "\\", "\\": "/", "^": "<", "<": "v", "v": ">", ">": "^"]
        var box = Array(repeating: Array(repeating: "", count: NM[0]), count: NM[1])

        for row in 0..<NM[0] {
            let input = readLine()!.map { String($0) }

            for col in 0..<NM[1] {
                box[NM[1]-col-1][row] = dict[input[col]]!
            }
        }

        for row in 0..<NM[1] {
            print(box[row].joined())
        }
    }
}
