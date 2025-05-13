//
//  1384.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/5/25.
//

//  문제 링크: https://www.acmicpc.net/problem/1384
//  알고리즘 분류: 구현

import Shared

public struct BOJ1384: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 599B
        var group = 1

        while let n = Int(readLine()!), n != 0 {
            var names = [String]()
            var nasty = [(Int, Int)]()

            for idx in 0..<n {
                let input = readLine()!.split(separator: " ").map { String($0) }
                names.append(input[0])

                for line in 1..<input.count where input[line] == "N" {
                    nasty.append((idx, line))
                }
            }

            print("Group \(group)")

            if nasty.isEmpty {
                print("Nobody was nasty")
            }

            for (idx, line) in nasty {
                print("\(names[(idx + n - line) % n]) was nasty about \(names[idx])")
            }

            print()

            group += 1
        }
    }
}
