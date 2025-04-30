//
//  2935.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/07/01.
//

// 문제: https://www.acmicpc.net/problem/2935

class BOJ2935: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 479B
    private func solution1() {
        let A = readLine()!.map { Int(String($0))! }
        let oper = readLine()!
        let B = readLine()!.map { Int(String($0))! }

        if oper == "*" {
            print("1" + String(repeating: "0", count: A.count - 1 + B.count - 1))
        } else {
            var result = (A.count >= B.count ? A : B)
            let other = Array(repeating: 0, count: abs(A.count - B.count)) + (A.count >= B.count ? B : A)

            for idx in result.indices {
                result[idx] += other[idx]
            }

            print(result.map { String($0) }.joined())
        }
    }

    // 메모리: 69096KB, 시간: 8ms, 코드 길이: 486B
    private func solution2() {
        let A = readLine()!.count
        let oper = readLine()!
        let B = readLine()!.count
        var result = "1"

        if oper == "*" {
            result += String(repeating: "0", count: A - 1 + B - 1)
        } else if A > B {
            result += String(repeating: "0", count: A - B - 1) + "1" + String(repeating: "0", count: B - 1)
        } else if A < B {
            result += String(repeating: "0", count: B - A - 1) + "1" + String(repeating: "0", count: A - 1)
        } else {
            result = "2" + String(repeating: "0", count: A - 1)
        }

        print(result)
    }
}
