//
//  10820.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/9/24.
//

//  문제 링크: https://www.acmicpc.net/problem/10820
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ10820: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69096KB, 시간: 8ms, 코드 길이: 461B
        while let input = readLine() {
            var count = (lower: 0, upper: 0, num: 0, space: 0)

            for char in input {
                switch char {
                case "a"..."z":
                    count.lower += 1
                case "A"..."Z":
                    count.upper += 1
                case "0"..."9":
                    count.num += 1
                case " ":
                    count.space += 1
                default:
                    break
                }
            }

            print("\(count.lower) \(count.upper) \(count.num) \(count.space)")
        }
    }
}
