//
//  10816.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/09.
//

// 문제: https://www.acmicpc.net/problem/10816

import Shared

public struct BOJ10816: Solvable {
    public init() {}

    public func run() {
        // 메모리: 126908KB, 시간: 680ms, 코드 길이: 374B
        let N = Int(readLine()!)!
        let myCards = readLine()!.split(separator: " ").map { Int(String($0))! }
        let M = Int(readLine()!)!
        let givenCards = readLine()!.split(separator: " ").map { Int(String($0))! }
        var cards = [Int: Int]()
        var result = ""

        myCards.forEach {
            cards[$0, default: 0] += 1
        }

        givenCards.forEach {
            result += "\(cards[$0, default: 0]) "
        }

        print(result)
    }
}
