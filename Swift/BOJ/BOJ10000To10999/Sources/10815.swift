//
//  10815.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/07.
//

// 문제: https://www.acmicpc.net/problem/10815

import Shared

public struct BOJ10815: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 117960KB, 시간: 636ms, 코드 길이: 309B
    private func solution1() {
        let N = Int(readLine()!)!
        var cards = Set(readLine()!.split(separator: " ").map { Int(String($0))! })
        var result = ""

        let M = Int(readLine()!)!
        let needCard = readLine()!.split(separator: " ").map { Int(String($0))! }

        needCard.forEach {
            result += "\(cards.insert($0).inserted ? 0 : 1) "
        }

        print(result)
    }

    // 메모리: 117960KB, 시간: 620ms, 코드 길이: 302B
    private func solution2() {
        let N = Int(readLine()!)!
        var cards = Set(readLine()!.split(separator: " ").map { Int(String($0))! })
        var result = ""

        let M = Int(readLine()!)!
        let needCard = readLine()!.split(separator: " ").map { Int(String($0))! }

        needCard.forEach {
            result += "\(cards.contains($0) ? 1 : 0) "
        }

        print(result)
    }
}
