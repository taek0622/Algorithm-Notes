//
//  6996.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 7/19/24.
//

//  문제 링크: https://www.acmicpc.net/problem/6996
//  알고리즘 분류: 구현, 문자열, 정렬

import Shared

public struct BOJ6996: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69108KB, 시간: 8ms, 코드 길이: 417B
    private func solution1() {
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let AB = readLine()!.split(separator: " ").map { String($0) }
            var count = Array(repeating: 0, count: 26)
            let result = count

            for char in AB[0] {
                count[Int(char.asciiValue!) - 97] += 1
            }

            for char in AB[1] {
                count[Int(char.asciiValue!) - 97] -= 1
            }

            print("\(AB[0]) & \(AB[1]) are \(count != result ? "NOT " : "")anagrams.")
        }
    }

    // 메모리: 69108KB, 시간: 8ms, 코드 길이: 207B
    private func solution2() {
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let AB = readLine()!.split(separator: " ").map { String($0) }
            print("\(AB[0]) & \(AB[1]) are \(AB[0].sorted() != AB[1].sorted() ? "NOT " : "")anagrams.")
        }
    }
}
