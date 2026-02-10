//
//  9289.swift
//  BOJ09000To09999
//
//  Created by 김민택 on 2/10/26.
//

//  문제 링크: https://www.acmicpc.net/problem/9289
//  알고리즘 분류: 구현, 문자열, 런타임 전의 전처리

import Shared

public struct BOJ9289: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 473B
        let moss = [".-": "A", "-...": "B", "-.-.": "C", "-..": "D", ".": "E", "..-.": "F", "--.": "G", "....": "H", "..": "I", ".---": "J", "-.-": "K", ".-..": "L", "--": "M", "-.": "N", "---": "O", ".--.": "P", "--.-": "Q", ".-.": "R", "...": "S", "-": "T", "..-": "U", "...-": "V", ".--": "W", "-..-": "X", "-.--": "Y", "--..": "Z"]
        let T = Int(readLine()!)!

        for idx in 1...T {
            print("Case \(idx): \(readLine()!.split(separator: " ").map { moss[String($0)]! }.joined())")
        }
    }
}
