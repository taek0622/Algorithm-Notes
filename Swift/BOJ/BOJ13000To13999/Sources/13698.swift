//
//  13698.swift
//  BOJ13000To13999
//
//  Created by 김민택 on 8/16/25.
//

//  문제 링크: https://www.acmicpc.net/problem/13698
//  알고리즘 분류: 구현, 시뮬레이션

import Shared

public struct BOJ13698: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 461B
        var cups = ["s", "", "", "b"]
        let moves = readLine()!

        for move in moves {
            if move == "A" {
                cups.swapAt(0, 1)
            } else if move == "B" {
                cups.swapAt(0, 2)
            } else if move == "C" {
                cups.swapAt(0, 3)
            } else if move == "D" {
                cups.swapAt(1, 2)
            } else if move == "E" {
                cups.swapAt(1, 3)
            } else {
                cups.swapAt(2, 3)
            }
        }

        print("\(cups.firstIndex(of: "s")! + 1)\n\(cups.firstIndex(of: "b")! + 1)")
    }
}
