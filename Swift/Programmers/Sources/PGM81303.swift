//
//  PGM81303.swift
//  Programmers
//
//  Created by 김이안 on 5/3/26.
//

//  문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/81303
//  문제 분류: 월간 코드 챌린지 시즌1

import Foundation

import Shared

public struct PGM81303: Solvable {
    public init() {}

    public func run() {
        print(solution(8, 2, ["D 2","C","U 3","C","D 4","C","U 2","Z","Z"]) == "OOOOXOOO")
        print(solution(8, 2, ["D 2","C","U 3","C","D 4","C","U 2","Z","Z","U 1","C"]) == "OOXOXOOO")
    }

    func solution(_ n: Int, _ k: Int, _ cmd: [String]) -> String {
        struct Row {
            var prev: Int?
            var diff: Bool
            var next: Int?
        }

        var table = [Row]()
        var deleted = [Int]()
        var curr = k

        for idx in 0..<n {
            table.append(Row(prev: idx > 0 ? idx - 1 : nil, diff: true, next: idx < n - 1 ? idx + 1 : nil))
        }

        for com in cmd {
            let op = com.split(separator: " ").map { String($0) }

            switch op[0] {
                case "U":
                    for _ in 0..<Int(op[1])! {
                        curr = table[curr].prev!
                    }
                case "D":
                    for _ in 0..<Int(op[1])! {
                        curr = table[curr].next!
                    }
                case "C":
                    table[curr].diff = false
                    deleted.append(curr)

                    if let prev = table[curr].prev {
                        table[prev].next = table[curr].next
                    }

                    if let next = table[curr].next {
                        table[next].prev = table[curr].prev
                        curr = next
                    } else {
                        curr = table[curr].prev!
                    }
                case "Z":
                    let restored = deleted.removeLast()
                    table[restored].diff = true

                    if let prev = table[restored].prev {
                        table[prev].next = restored
                    }

                    if let next = table[restored].next {
                        table[next].prev = restored
                    }
                default: break
            }
        }

        return table.map { $0.diff ? "O" : "X" }.joined()
    }
}
