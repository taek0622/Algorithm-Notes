//
//  16637.swift
//  BOJ16000To16999
//
//  Created by 김민택 on 5/31/25.
//

//  문제 링크: https://www.acmicpc.net/problem/16637
//  알고리즘 분류: 구현, 브루트포스 알고리즘

import Shared

public struct BOJ16637: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 1101B
        enum Parenthesis {
            case none
            case open
            case close
        }

        let N = Int(readLine()!)!
        let expression = readLine()!.map { String($0) }
        print(N == 1 ? expression[0] : N == 3 ? calculate(2, Int(expression[0])!, .none) : max(calculate(2, Int(expression[0])!, .none), calculate(2, Int(expression[0])!, .open)))

        func calculate(_ idx: Int, _ sum: Int, _ parenthesis: Parenthesis) -> Int {
            var newSum = 0

            switch parenthesis {
                case .none:
                    newSum = operation(sum, expression[idx-1], Int(expression[idx])!)
                case .open:
                    return calculate(idx+2, sum, .close)
                case .close:
                    newSum = operation(sum, expression[idx-3], operation(Int(expression[idx-2])!, expression[idx-1], Int(expression[idx])!))
            }

            if idx < N - 3 { return max(calculate(idx+2, newSum, .none), calculate(idx+2, newSum, .open)) }
            if idx != N - 1 { return calculate(idx+2, newSum, .none) }
            return newSum
        }

        func operation(_ num1: Int, _ op: String, _ num2: Int) -> Int {
            if op == "+" { return num1 + num2 }
            if op == "-" { return num1 - num2 }
            return num1 * num2
        }
    }
}
