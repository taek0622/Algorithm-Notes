//
//  11536.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/14/24.
//

//  문제 링크: https://www.acmicpc.net/problem/11536
//  알고리즘 분류: 구현, 문자열, 정렬

import Shared

public struct BOJ11536: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 271B
        let N = Int(readLine()!)!
        var players = [String]()

        for _ in 0..<N {
            players.append(readLine()!)
        }

        if players.sorted() == players {
            print("INCREASING")
        } else if players.sorted(by: { $0 > $1 }) == players {
            print("DECREASING")
        } else {
            print("NEITHER")
        }
    }
}
