//
//  4378.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/6/25.
//

//  문제 링크: https://www.acmicpc.net/problem/4378
//  알고리즘 분류: 구현, 문자열, 애드 혹

import Shared

public struct BOJ4378: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69096KB, 시간: 8ms, 코드 길이: 712B
    private func solution1() {
        let fix: [Character: String] = ["1": "`", "2": "1", "3": "2", "4": "3", "5": "4", "6": "5", "7": "6", "8": "7", "9": "8", "0": "9", "-": "0", "=": "-",
                                           "Q": "\t", "W": "Q", "E": "W", "R": "E", "T": "R", "Y": "T", "U": "Y", "I": "U", "O": "I", "P": "O", "[": "P", "]": "[", "\\": "]",
                                           "S": "A", "D": "S", "F": "D", "G": "F", "H": "G", "J": "H", "K": "J", "L": "K", ";": "L", "'": ";",
                                           "X": "Z", "C": "X", "V": "C", "B": "V", "N": "B", "M": "N", ",": "M", ".": ",", "/": ".", " ": " "]

        while let input = readLine() {
            var result = ""

            for char in input {
                result += fix[char]!
            }

            print(result)
        }
    }

    // 메모리: 69096KB, 시간: 8ms, 코드 길이: 246B
    private func solution2() {
        let fix = "`1234567890-=\tQWERTYUIOP[]\\ASDFGHJKL;'ZXCVBNM,./  "

        while let input = readLine() {
            var result = ""

            for char in input {
                result += "\(fix[fix.index(fix.lastIndex(of: char)!, offsetBy: -1)])"
            }

            print(result)
        }
    }
}
