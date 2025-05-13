//
//  14612.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/3/25.
//

//  문제 링크: https://www.acmicpc.net/problem/14612
//  알고리즘 분류: 구현, 정렬, 시뮬레이션

import Shared

public struct BOJ14612: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69112KB, 시간: 8ms, 코드 길이: 632B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var orders = [(Int, Int)]()

        for _ in 0..<NM[0] {
            let input = readLine()!.split(separator: " ").map { String($0) }

            if input[0] == "order" {
                orders.append((Int(input[1])!, Int(input[2])!))
            } else if input[0] == "sort" {
                orders.sort { front, back in
                    if front.1 == back.1 { return front.0 < back.0 }
                    return front.1 < back.1
                }
            } else {
                orders.remove(at: orders.firstIndex(where: { $0.0 == Int(input[1])! })!)
            }

            print(orders.isEmpty ? "sleep" : orders.map { "\($0.0)" }.joined(separator: " "))
        }
    }
}
