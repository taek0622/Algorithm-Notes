//
//  12789.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/08/23.
//

// 문제: https://www.acmicpc.net/problem/12789

import Shared

public struct BOJ12789: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 552B
        let _ = Int(readLine()!)!
        var n = 1
        var queue = readLine()!.split(separator: " ").map { Int(String($0))! }
        var stack = [Int]()
        var isNice = true

        while !queue.isEmpty {
            if queue[0] == n {
                n += 1
                queue.removeFirst()
            } else if stack.last == n {
                n += 1
                stack.removeLast()
            } else {
                stack.append(queue.removeFirst())
            }
        }

        while !stack.isEmpty {
            if stack.last == n {
                stack.removeLast()
                n += 1
            } else {
                isNice = false
                break
            }
        }

        print(isNice ? "Nice" : "Sad")
    }
}
