//
//  5656.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 9/7/24.
//

//  문제 링크: https://www.acmicpc.net/problem/5656
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ5656: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 28ms, 코드 길이: 631B
        var count = 1

        while true {
            let input = readLine()!.split(separator: " ")

            if input[1] == "E" {
                break
            }

            var result = false
            let (base, compare) = (Int(input[0])!, Int(input[2])!)

            switch input[1] {
                case ">":
                    result = base > compare
                case ">=":
                    result = base >= compare
                case "<":
                    result = base < compare
                case "<=":
                    result = base <= compare
                case "==":
                    result = base == compare
                case "!=":
                    result = base != compare
                default:
                    break
            }

            print("Case \(count): \(result)")

            count += 1
        }
    }
}
