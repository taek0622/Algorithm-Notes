//
//  7785.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/04/04.
//

// 문제: https://www.acmicpc.net/problem/7785

import Shared

public struct BOJ7785: Solvable {
    public init() {}

    public func run() {
        // 메모리: 75600KB, 시간: 220ms, 코드 길이: 325B
        let n = Int(readLine()!)!
        var people = Set<String>()

        for _ in 0..<n {
            let input = readLine()!.split(separator: " ").map { String($0) }

            if input[1] == "enter" {
                people.insert(input[0])
            } else if input[1] == "leave" {
                people.remove(input[0])
            }
        }

        people.sorted(by: >).forEach {
            print($0)
        }
    }
}
