//
//  11723.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/03.
//

// 문제: https://www.acmicpc.net/problem/11723

import Shared

public struct BOJ11723: Solvable {
    public init() {}

    public func run() {
        let fileIO = RhynoFileIO()
        let M = fileIO.readInt()
        var S = Set<Int>()

        for _ in 0..<M {
            let command = fileIO.readString()

            if command == "all" {
                S = Set(1...20)
                continue
            }

            let number = fileIO.readInt()

            switch command {
            case "add":
                S.insert(number)
            case "remove":
                S.remove(number)
            case "check":
                print(S.contains(number) ? "1" : "0")
            case "toggle":
                if S.contains(number) {
                    S.remove(number)
                } else {
                    S.insert(number)
                }
            case "empty":
                S = []
            default:
                break
            }
        }
    }
}
