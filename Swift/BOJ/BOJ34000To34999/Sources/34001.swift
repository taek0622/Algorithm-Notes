//
//  34001.swift
//  BOJ34000To34999
//
//  Created by 김민택 on 11/28/25.
//

//  문제 링크: https://www.acmicpc.net/problem/34001
//  알고리즘 분류: 구현, 많은 조건 분기

import Shared

public struct BOJ34001: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 4ms, 코드 길이: 1403B
        let L = Int(readLine()!)!
        var arcane = Array(repeating: 0, count: 6)
        var authentic = Array(repeating: 0, count: 7)

        if L >= 200 {
            arcane[0] += 500
        }

        if L >= 210 {
            arcane[0] -= 200
            arcane[1] += 500
        }

        if L >= 220 {
            arcane[0] -= 200
            arcane[1] -= 200
            arcane[2] += 500
        }

        if L >= 225 {
            arcane[1] -= 200
            arcane[2] -= 200
            arcane[3] += 500
        }

        if L >= 230 {
            arcane[2] -= 200
            arcane[3] -= 200
            arcane[4] += 500
        }

        if L >= 235 {
            arcane[3] -= 200
            arcane[4] -= 200
            arcane[5] += 500
        }

        if L >= 245 {
            arcane[4] -= 200
            arcane[5] -= 200
        }

        if L >= 250 {
            arcane[5] -= 200
        }

        if L >= 260 {
            authentic[0] += 500
        }

        if L >= 265 {
            authentic[0] -= 200
            authentic[1] += 500
        }

        if L >= 270 {
            authentic[0] -= 200
            authentic[1] -= 200
            authentic[2] += 500
        }

        if L >= 275 {
            authentic[1] -= 200
            authentic[2] -= 200
            authentic[3] += 500
        }

        if L >= 280 {
            authentic[2] -= 200
            authentic[3] -= 200
            authentic[4] += 500
        }

        if L >= 285 {
            authentic[3] -= 200
            authentic[4] -= 200
            authentic[5] += 500
        }

        if L >= 290 {
            authentic[4] -= 200
            authentic[5] -= 200
            authentic[6] += 500
        }

        if L >= 295 {
            authentic[5] -= 200
            authentic[6] -= 200
        }

        if L >= 300 {
            authentic[6] -= 200
        }

        print("\(arcane.map { String($0) }.joined(separator: " "))\n\(authentic.map { String($0) }.joined(separator: " "))")
    }
}
