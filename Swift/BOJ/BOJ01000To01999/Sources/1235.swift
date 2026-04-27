//
//  1235.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/08/26.
//

// 문제: https://www.acmicpc.net/problem/1235

import Shared

public struct BOJ1235: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 70428KB, 시간: 20ms, 코드 길이: 354B
    private func solution1() {
        let N = Int(readLine()!)!
        var students = [[String]]()

        for _ in 0..<N {
            students.append(readLine()!.map { String($0) }.reversed())
        }

        var k = 0
        while k < students[0].count {
            var id = Set<String>()

            for student in students {
                id.insert(student[0...k].joined())
            }

            if id.count == N {
                break
            }

            k += 1
        }

        print(k+1)
    }

    // 메모리: 69264KB, 시간: 12ms, 코드 길이: 322B
    private func solution2() {
        let N = Int(readLine()!)!
        var students = [String]()

        for _ in 0..<N {
            students.append(readLine()!)
        }

        var k = 0
        while k < students[0].count {
            var id = Set<String>()

            for student in students {
                id.insert(String(student.suffix(k)))
            }

            if id.count == N {
                break
            }

            k += 1
        }

        print(k)
    }
}
