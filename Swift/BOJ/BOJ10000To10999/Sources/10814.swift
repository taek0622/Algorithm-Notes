//
//  10814.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/05.
//

// 문제: https://www.acmicpc.net/problem/10814

import Shared

public struct BOJ10814: Solvable {
    public init() {}

    public func run() {
        solution3()
    }

    // 메모리: 73820KB, 시간: 152ms, 코드 길이: 482B
    private func solution1() {
        let N = Int(readLine()!)!
        var members = [(Int, String)]()
        var result = ""

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { String($0) }
            members.append((Int(input[0])!, input[1]))
        }

        let sortingMembers: ((Int, String), (Int, String)) -> Bool = { first, second in
            if first.0 < second.0 {
                return first.0 < second.0
            }

            return false
        }

        members.sort(by: sortingMembers)

        members.forEach {
            result += "\($0.0) \($0.1)\n"
        }

        print(result)
    }

    // 메모리: 75180KB, 시간: 152ms, 코드 길이: 294B
    private func solution2() {
        let N = Int(readLine()!)!
        var members = [(Int, String)]()

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { String($0) }
            members.append((Int(input[0])!, input[1]))
        }

        members.sort(by: { $0.0 < $1.0 })

        print(members.map { "\($0.0) \($0.1)" }.joined(separator: "\n"))
    }

    // 메모리: 73820KB, 시간: 152ms, 코드 길이: 314B
    private func solution3() {
        let N = Int(readLine()!)!
        var members = [(Int, String)]()
        var result = ""

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { String($0) }
            members.append((Int(input[0])!, input[1]))
        }

        members.sort(by: { $0.0 < $1.0 })

        members.forEach {
            result += "\($0.0) \($0.1)\n"
        }

        print(result)
    }
}
