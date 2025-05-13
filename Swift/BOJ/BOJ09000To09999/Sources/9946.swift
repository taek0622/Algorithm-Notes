//
//  9946.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 9/30/24.
//

//  문제 링크: https://www.acmicpc.net/problem/9946
//  알고리즘 분류: 구현, 문자열, 정렬

import Shared

public struct BOJ9946: Solvable {
    public init() {}

    public func run() {
        solution1()
    }

    // 메모리: 69100KB, 시간: 260ms, 코드 길이: 470B
    private func solution1() {
        let same = Array(repeating: 0, count: 26)
        var count = 1

        while true {
            let origin = readLine()!
            let pickup = readLine()!

            if origin == "END" && pickup == "END" {
                break
            }

            var alphabet = same

            for char in origin {
                alphabet[Int(char.asciiValue!) - 97] += 1
            }

            for char in pickup {
                alphabet[Int(char.asciiValue!) - 97] -= 1
            }

            print("Case \(count): \(alphabet == same ? "same" : "different")")
            count += 1
        }
    }

    // 메모리: 69104KB, 시간: 576ms, 코드 길이: 213B
    private func solution2() {
        var count = 1

        while let origin = readLine(), let pickup = readLine(), origin != "END" && pickup != "END" {
            print("Case \(count): \(origin.sorted() == pickup.sorted() ? "same" : "different")")
            count += 1
        }
    }
}
