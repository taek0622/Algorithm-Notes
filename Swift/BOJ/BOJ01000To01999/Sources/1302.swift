//
//  1302.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/08/29.
//

//  문제 링크: https://www.acmicpc.net/problem/1302
//  알고리즘 분류: 자료 구조, 문자열, 정렬, 해시를 사용한 집합과 맵

import Shared

public struct BOJ1302: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69108KB, 시간: 8ms, 코드 길이: 223B
    private func solution1() {
        let N = Int(readLine()!)!
        var books = [String: Int]()
        var max = ("", 0)

        for _ in 0..<N {
            books[readLine()!, default: 0] += 1
        }

        books.sorted(by: <).forEach {
            if $0.1 > max.1 {
                max = $0
            }
        }

        print(max.0)
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 206B
    private func solution2() {
        let N = Int(readLine()!)!
        var books = [String: Int]()

        for _ in 0..<N {
            books[readLine()!, default: 0] += 1
        }

        print(books.max(by: { $0.value == $1.value ? $0.key > $1.key : $0.value < $1.value })!.key)
    }
}
