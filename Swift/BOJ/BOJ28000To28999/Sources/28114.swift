//
//  28114.swift
//  BOJ28000To28999
//
//  Created by 김민택 on 10/22/25.
//

//  문제 링크: https://www.acmicpc.net/problem/28114
//  알고리즘 분류: 구현, 정렬

import Shared

public struct BOJ28114: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69112KB, 시간: 8ms, 코드 길이: 353B
        var member = Array(repeating: (0, 0, ""), count: 3)

        for idx in 0..<3 {
            let PYS = readLine()!.split(separator: " ").map { String($0) }
            member[idx] = (Int(PYS[0])!, Int(PYS[1])! % 100, PYS[2])
        }

        member.sort { $0.1 < $1.1 }
        print(member.map { String($0.1) }.joined())
        member.sort { $0.0 > $1.0 }
        print(member.map { String($0.2.first!) }.joined())
    }
}
