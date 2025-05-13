//
//  1107.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/02.
//

// 문제: https://www.acmicpc.net/problem/1107

import Shared

public struct BOJ1107: Solvable {
    public init() {}

    public func run() {
        let N = String(readLine()!)
        let M = Int(readLine()!)!
        var broken = [Int]()
        var count = 0

        if M > 0 {
//            broken = readLine()!.split(separator: " ").map { String($0) }

            if abs(Int(N)! - 100) <= 2 {
                print(abs(Int(N)! - 100))
            } else {
                var channel = Int(N)!

                while channel > 10 {
                    let number = channel % 10
                    if !broken.contains(number) {
                        channel -= number
                        count += 1
                    }
                }
                print(N.count)
            }
        } else {
            print(N.count)
        }
    }
}
