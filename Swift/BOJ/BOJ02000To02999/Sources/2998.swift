//
//  2998.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 8/12/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2998
//  알고리즘 분류: 수학, 구현, 문자열

import Shared

public struct BOJ2998: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 4ms, 코드 길이: 655B
        var number = Array(readLine()!)
        var result = ""

        while number.count % 3 != 0 {
            number.insert("0", at: 0)
        }

        var idx = 0

        while idx < number.count {
            let now = String(number[idx...idx+2])

            switch now {
            case "000":
                result.append("0")
            case "001":
                result.append("1")
            case "010":
                result.append("2")
            case "011":
                result.append("3")
            case "100":
                result.append("4")
            case "101":
                result.append("5")
            case "110":
                result.append("6")
            case "111":
                result.append("7")
            default:
                break
            }

            idx += 3
        }

        print(result)
    }
}
