//
//  7583.swift
//  BOJ07000To07999
//
//  Created by 김민택 on 2/16/26.
//

//  문제 링크: https://www.acmicpc.net/problem/7583
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ7583: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 4ms, 코드 길이: 453B
        while let input = readLine(), input != "#" {
            var sentence = input.split(separator: " ").map { String($0) }
            var new = Array(repeating: "", count: sentence.count)

            for idx in sentence.indices {
                let first = String(sentence[idx].removeFirst())
                let last = String(sentence[idx].popLast() ?? " ")

                new[idx] = first + String(sentence[idx].reversed()) + (last == " " ? "" : last)
            }

            print(new.joined(separator: " "))
        }
    }
}
