//
//  4446.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/31/25.
//

//  문제 링크: https://www.acmicpc.net/problem/4446
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ4446: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 1092B
        while let input = readLine() {
            let sentence = input.map { String($0) }
            let lowerVowels = ["a", "i", "y", "e", "o", "u"]
            let upperVowels = ["A", "I", "Y", "E", "O", "U"]
            let lowerConsonants = ["b", "k", "x", "z", "n", "h", "d", "c", "w", "g", "p", "v", "j", "q", "t", "s", "r", "l", "m", "f"]
            let upperConsonants = ["B", "K", "X", "Z", "N", "H", "D", "C", "W", "G", "P", "V", "J", "Q", "T", "S", "R", "L", "M", "F"]
            var result = ""

            for char in sentence {
                if let idx = lowerVowels.firstIndex(of: char) {
                    result += lowerVowels[(idx+3) % 6]
                    continue
                }

                if let idx = upperVowels.firstIndex(of: char) {
                    result += upperVowels[(idx+3) % 6]
                    continue
                }

                if let idx = lowerConsonants.firstIndex(of: char) {
                    result += lowerConsonants[(idx+10) % 20]
                    continue
                }

                if let idx = upperConsonants.firstIndex(of: char) {
                    result += upperConsonants[(idx+10) % 20]
                    continue
                }

                result += char
            }

            print(result)
        }
    }
}
