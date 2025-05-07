//
//  10545.swift
//  BOJ10000To10999
//
//  Created by 김민택 on 5/7/25.
//

//  문제 링크: https://www.acmicpc.net/problem/10545
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ10545: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 813B
        var pad = Array(repeating: "", count: 9)
        let dict: [Character: Int] = ["a": 2, "b": 22, "c": 222, "d": 3, "e": 33, "f": 333, "g": 4, "h": 44, "i": 444, "j": 5, "k": 55, "l": 555, "m": 6, "n": 66, "o": 666, "p": 7, "q": 77, "r": 777, "s": 7777, "t": 8, "u": 88, "v": 888, "w": 9, "x": 99, "y": 999, "z": 9999]
        let brokenPad = readLine()!.split(separator: " ").map { Int($0)! }
        let text = readLine()!.map { $0 }
        var keys = ""

        for idx in brokenPad.indices {
            pad[brokenPad[idx]-1] = "\(idx+1)"
        }

        for idx in text.indices {
            var key = dict[text[idx]]!

            if idx > 0 && key % 10 == dict[text[idx-1]]! % 10 {
                keys += "#"
            }

            var fixedKey = ""

            while key > 0 {
                let char = key % 10
                fixedKey += pad[char-1]
                key /= 10
            }

            keys += fixedKey.reversed()
        }

        print(keys)
    }
}
