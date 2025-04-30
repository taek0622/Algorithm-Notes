//
//  2941.swift
//  Swift
//
//  Created by 김민택 on 2022/06/17.
//

// 문제: https://www.acmicpc.net/problem/2941

import Foundation

class BOJ2941: Solvable {
    func run() {
        solution1()
    }

    // 메모리: 69096KB, 시간: 8ms, 코드 길이: 478B
    private func solution1() {
        let croAlphabet = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]

        let input = Array(readLine()!)

        var cntCroAlphabet = input.count

        var idx = 0

        while idx < input.count {
            if idx > 1 && croAlphabet.contains(String(input[idx - 2]) + String(input[idx - 1]) + String(input[idx])) {
                cntCroAlphabet -= 2
            } else if idx != 0 && croAlphabet.contains(String(input[idx - 1]) + String(input[idx])) {
                cntCroAlphabet -= 1
            }
            idx += 1
        }

        print(cntCroAlphabet)
    }

    // 메모리: 79504KB, 시간: 12ms, 코드 길이: 207B
    private func solution2() {
        let alphabet = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]
        var input = readLine()!

        alphabet.forEach {
            input = input.replacingOccurrences(of: $0, with: "#")
        }

        print(input.count)
    }
}
