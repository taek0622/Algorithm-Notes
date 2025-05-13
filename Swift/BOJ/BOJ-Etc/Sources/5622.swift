//
//  5622.swift
//  Swift
//
//  Created by 김민택 on 2022/06/14.
//

// 문제: https://www.acmicpc.net/problem/5622

import Shared

public struct BOJ5622: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69096KB, 시간: 8ms, 코드 길이: 567B
        func characterToNumber(text: Character) -> Int {
            switch text {
            case "A", "B", "C":
                return 2
            case "D", "E", "F":
                return 3
            case "G", "H", "I":
                return 4
            case "J", "K", "L":
                return 5
            case "M", "N", "O":
                return 6
            case "P", "Q", "R", "S":
                return 7
            case "T", "U", "V":
                return 8
            case "W", "X", "Y", "Z":
                return 9
            default:
                return 1
            }
        }

        let input = Array(readLine()!)

        var sum = input.count

        for i in input {
            sum += characterToNumber(text: i)
        }

        print(sum)
    }
}
