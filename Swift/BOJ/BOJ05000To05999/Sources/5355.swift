//
//  5355.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/04/21.
//

// 문제: https://www.acmicpc.net/problem/5355

import Foundation

import Shared

public struct BOJ5355: Solvable {
    public init() {}

    public func run() {
        // 메모리: 79512KB, 시간: 12ms, 코드 길이: 465B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let input = readLine()!.split(separator: " ").map { String($0) }
            var number = Float(input[0])!

            for idx in 1..<input.count {
                switch input[idx] {
                case "@":
                    number *= 3
                case "%":
                    number += 5
                case "#":
                    number -= 7
                default:
                    break
                }
            }

            print(String(format: "%.2f", number))
        }
    }
}
