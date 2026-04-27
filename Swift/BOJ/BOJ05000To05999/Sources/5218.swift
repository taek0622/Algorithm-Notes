//
//  5218.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/05/26.
//

// 문제: https://www.acmicpc.net/problem/5218

import Shared

public struct BOJ5218: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69108KB, 시간: 8ms, 코드 길이: 685B
    private func solution1() {
        let T = Int(readLine()!)!
        let alphabet = ["A": 1, "B": 2, "C": 3, "D": 4, "E": 5, "F": 6, "G": 7, "H": 8, "I": 9, "J": 10,
                        "K": 11, "L": 12, "M": 13, "N": 14, "O": 15, "P": 16, "Q": 17, "R": 18, "S": 19, "T": 20,
                        "U": 21, "V": 22, "W": 23, "X": 24, "Y": 25, "Z": 26]

        for _ in 0..<T {
            let input = readLine()!.split(separator: " ").map { String($0) }
            let word1 = input[0].map { String($0) }
            let word2 = input[1].map { String($0) }
            var result = "Distances:"

            for idx in 0..<word1.count {
                let (x, y) = (alphabet[word1[idx]]!, alphabet[word2[idx]]!)
                result += " \(y < x ? (y + 26) - x : y - x)"
            }

            print(result)
        }
    }

    // 메모리: 69108KB, 시간: 8ms, 코드 길이: 438B
    private func solution2() {
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let input = readLine()!.split(separator: " ").map { String($0) }
            let word1: [Character] = Array(input[0])
            let word2: [Character] = Array(input[1])
            var result = "Distances:"

            for idx in 0..<word1.count {
                let distance = Int(word2[idx].asciiValue!) - Int(word1[idx].asciiValue!)
                result += " \(distance < 0 ? distance + 26 : distance)"
            }

            print(result)
        }
    }
}
