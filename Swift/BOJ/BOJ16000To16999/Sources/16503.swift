//
//  16503.swift
//  BOJ16000To16999
//
//  Created by 김민택 on 9/10/25.
//

//  문제 링크: https://www.acmicpc.net/problem/16503
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ16503: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 611B
        let KO = readLine()!.split(separator: " ").map { String($0) }
        let K = (Int(KO[0])!, Int(KO[2])!, Int(KO[4])!)
        var result = [Int]()
        result.append(calculate(K.0, calculate(K.1, K.2, KO[3]), KO[1]))
        result.append(calculate(calculate(K.0, K.1, KO[1]), K.2, KO[3]))
        print("\(result.min()!)\n\(result.max()!)")

        func calculate(_ num1: Int, _ num2: Int, _ oper: String) -> Int {
            switch oper {
                case "+":
                    return num1 + num2
                case "-":
                    return num1 - num2
                case "*":
                    return num1 * num2
                case "/":
                    return num1 / num2
                default:
                    return 0
            }
        }
    }
}
