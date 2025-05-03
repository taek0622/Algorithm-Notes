//
//  11328.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 7/5/24.
//

//  문제 링크: https://www.acmicpc.net/problem/11328
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ11328: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 92ms, 코드 길이: 409B
        let N = Int(readLine()!)!

        for _ in 0..<N {
            let strings = readLine()!.split(separator: " ").map { String($0) }
            var chars = Array(repeating: 0, count: 26)

            for char in strings[0] {
                chars[Int(char.asciiValue!) - 97] += 1
            }

            for char in strings[1] {
                chars[Int(char.asciiValue!) - 97] -= 1
            }

            print(chars == Array(repeating: 0, count: 26) ? "Possible" : "Impossible")
        }
    }
}
