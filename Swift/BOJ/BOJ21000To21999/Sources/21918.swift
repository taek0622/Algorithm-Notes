//
//  21918.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/15/24.
//

//  문제 링크: https://www.acmicpc.net/problem/21918
//  알고리즘 분류: 구현, 시뮬레이션

import Shared

public struct BOJ21918: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69252KB, 시간: 68ms, 코드 길이: 726B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var bulbs = readLine()!.split(separator: " ").map { $0 == "1" }

        for _ in 0..<NM[1] {
            let abc = readLine()!.split(separator: " ").map { Int($0)! }

            switch abc[0] {
                case 1:
                    bulbs[abc[1] - 1] = (abc[2] == 1)
                case 2:
                    for idx in abc[1]...abc[2] {
                        bulbs[idx - 1].toggle()
                    }
                case 3:
                    for idx in abc[1]...abc[2] {
                        bulbs[idx - 1] = false
                    }
                case 4:
                    for idx in abc[1]...abc[2] {
                        bulbs[idx - 1] = true
                    }
                default:
                    break
            }
        }

        print(bulbs.map { $0 ? "1" : "0" }.joined(separator: " "))
    }
}
