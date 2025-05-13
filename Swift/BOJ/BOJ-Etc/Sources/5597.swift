//
//  5597.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2022/12/26.
//

// 문제: https://www.acmicpc.net/problem/5597

import Foundation

import Shared

public struct BOJ5597: Solvable {
    public init() {}

    public func run() {
        solution3()
    }

    // 메모리: 69100KB, 시간: 20ms, 코드 길이: 220B
    private func solution1() {
        var students = [Int]()
        for num in 1...30 {
            students.append(num)
        }

        for _ in  1...28 {
            let input = Int(readLine()!)!

            students.removeAll {
                return $0 == input
            }
        }
        
        students.forEach {
            print($0)
        }
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 199B
    private func solution2() {
        var students = Array(repeating: false, count: 30)

        for _ in 1...28 {
            students[Int(readLine()!)! - 1] = true
        }

        print(students.firstIndex(of: false)! + 1)
        print(students.lastIndex(of: false)! + 1)
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 140B
    private func solution3() {
        var students = Array(1...30)

        for _ in 1...28 {
            students[Int(readLine()!)! - 1] = -1
        }

        students.filter { $0 > 0 }.forEach { print($0) }
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 152B
    private func solution4() {
        var students = Array(1...30)

        for _ in 1...28 {
            students[Int(readLine()!)! - 1] = -1
        }

        students.forEach {
            if $0 > 0 {
                print($0)
            }
        }
    }
}
