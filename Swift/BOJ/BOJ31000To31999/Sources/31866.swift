//
//  31866.swift
//  BOJ31000To31999
//
//  Created by 김민택 on 10/27/25.
//

//  문제 링크: https://www.acmicpc.net/problem/31866
//  알고리즘 분류: 구현, 많은 조건 분기

import Shared

public struct BOJ31866: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 956B
        enum Symbol {
            case none
            case rock
            case scissors
            case paper
        }

        let fingers = readLine()!.split(separator: " ").map { translate(Int($0)!) }
        print(compare(fingers[0], fingers[1]))

        func translate(_ finger: Int) -> Symbol {
            if finger == 0 { return .rock }
            if finger == 2 { return .scissors }
            if finger == 5 { return .paper }
            return .none
        }

        func compare(_ finger1: Symbol, _ finger2: Symbol) -> String {
            if finger1 == finger2 { return "=" }
            if finger1 == .rock {
                if finger2 == .none || finger2 == .scissors { return ">" }
                if finger2 == .paper { return "<" }
            }
            if finger1 == .scissors {
                if finger2 == .none || finger2 == .paper { return ">" }
                if finger2 == .rock { return "<" }
            }
            if finger1 == .paper {
                if finger2 == .none || finger2 == .rock { return ">" }
                if finger2 == .scissors { return "<" }
            }
            if finger1 == .none { return "<" }
            return ""
        }
    }
}
