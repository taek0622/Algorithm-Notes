//
//  11922.swift
//  BOJ11000To11999
//
//  Created by 김민택 on 2/15/26.
//

//  문제 링크: https://www.acmicpc.net/problem/11922
//  알고리즘 분류: 구현

import Shared

public struct BOJ11922: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 4ms, 코드 길이: 407B
        let domScore = ["A": 11, "K": 4, "Q": 3, "J": 20, "T": 10, "9": 14, "8": 0, "7": 0]
        let nonScore = ["A": 11, "K": 4, "Q": 3, "J": 2, "T": 10, "9": 0, "8": 0, "7": 0]
        let NB = readLine()!.split(separator: " ").map { String($0) }
        var score = 0

        for _ in 0..<Int(NB[0])! * 4 {
            let card = readLine()!.map { String($0) }
            score += card[1] == NB[1] ? domScore[card[0]]! : nonScore[card[0]]!
        }

        print(score)
    }
}
