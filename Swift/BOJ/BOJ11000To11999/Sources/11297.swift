//
//  11297.swift
//  BOJ11000To11999
//
//  Created by 김민택 on 2/24/26.
//

//  문제 링크: https://www.acmicpc.net/problem/11297
//  알고리즘 분류: 구현, 문자열, 시뮬레이션

import Shared

public struct BOJ11297: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 4ms, 코드 길이: 415B
        while let input = readLine(), input != "0 0 0" {
            let S = input.split(separator: " ").map { Int($0)! }.reduce(0, +) % 25 + 1
            var sentence = readLine()!.map { $0 }

            for idx in sentence.indices {
                let now = Int(sentence[idx].asciiValue!)

                if 97..<123 ~= now {
                    sentence[idx] = Character(UnicodeScalar((now - 97 - S + 26) % 26 + 97)!)
                }
            }

            print(String(sentence))
        }
    }
}
