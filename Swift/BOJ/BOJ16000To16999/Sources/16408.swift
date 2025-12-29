//
//  16408.swift
//  BOJ16000To16999
//
//  Created by 김민택 on 12/29/25.
//

//  문제 링크: https://www.acmicpc.net/problem/16408
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ16408: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 446B
        let cards = readLine()!.split(separator: " ").map { String($0.first!) }
        var freq = Array(repeating: 0, count: 13)

        for card in cards {
            if card == "A" {
                freq[0] += 1
            } else if card == "T" {
                freq[9] += 1
            } else if card == "J" {
                freq[10] += 1
            } else if card == "Q" {
                freq[11] += 1
            } else if card == "K" {
                freq[12] += 1
            } else {
                freq[Int(card)!] += 1
            }
        }

        print(freq.max()!)
    }
}
