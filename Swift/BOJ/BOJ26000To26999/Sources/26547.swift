//
//  26547.swift
//  BOJ26000To26999
//
//  Created by 김민택 on 1/9/26.
//

//  문제 링크: https://www.acmicpc.net/problem/26547
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ26547: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 357B
        let n = Int(readLine()!)!

        for _ in 0..<n {
            let word = readLine()!.map { String($0) }
            print(word.joined())

            for idx in stride(from: 1, to: word.count - 1, by: 1) {
                print(word[idx] + String(repeating: " ", count: word.count - 2) + word[word.count - idx - 1])
            }

            if word.count != 1 {
                print(word.reversed().joined())
            }
        }
    }
}
