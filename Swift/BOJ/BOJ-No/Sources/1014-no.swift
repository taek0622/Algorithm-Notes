//
//  1014.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/09/23.
//

//  문제 링크: https://www.acmicpc.net/problem/1014
//  알고리즘 분류: 다이나믹 프로그래밍, 비트마스킹, 최대 유량, 비트필드를 이용한 다이나믹 프로그래밍

import Shared

public struct BOJ1014: Solvable {
    public init() {}

    public func run() {
        let C = Int(readLine()!)!

        for _ in 0..<C {
            let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
//            var seat = Array(repeating: Array(repeating: false, count: NM[1]), count: NM[0])
            var temp: [(odd: Int, even: Int)] = [(0, 0), (0, 0)]
            var (odd, even) = (0, 0)

//            for idx in 0..<NM[0] {
//                seat[idx] = readLine()!.map { $0 == "." ? true : false }
//            }

            for _ in 0..<NM[0] {
                let seat = readLine()!.map { $0 == "." ? true : false }

                for idx in seat.indices where seat[idx] {
                    if idx % 2 == 1 {
                        temp[1].odd += 1
                    } else {
                        temp[1].even += 1
                    }
                }
            }

            print(max(odd, even))
        }
    }
}
