//
//  10814.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/05.
//

// 문제: https://www.acmicpc.net/problem/10814

class BOJ10814: Solvable {
    func run() {
        // 메모리: 73820KB, 시간: 152ms, 코드 길이: 482B
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
}
