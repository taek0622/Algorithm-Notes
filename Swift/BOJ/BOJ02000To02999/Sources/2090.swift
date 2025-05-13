//
//  2090.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/14/25.
//

//  문제 링크: https://www.acmicpc.net/problem/2090
//  알고리즘 분류: 수학, 구현, 정수론, 유클리드 호제법

import Shared

public struct BOJ2090: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 563B
        _ = readLine()
        var A = readLine()!.split(separator: " ").map { (Int($0)!, 1) }

        while A.count > 1 {
            let num1 = A.removeLast()
            let num2 = A.removeLast()
            let lcm = num1.0 * num2.0 / findGCD(num1.0, num2.0)
            let son = lcm / num1.0 * num1.1 + lcm / num2.0 * num2.1
            let gcd = findGCD(lcm, son)

            A.append(gcd == 1 ? (lcm, son) : (lcm / gcd, son / gcd))
        }

        print("\(A[0].0)/\(A[0].1)")

        func findGCD(_ num1: Int, _ num2: Int) -> Int {
            let modulo = num2 % num1

            if modulo != 0 {
                return findGCD(modulo, num1)
            }

            return num1
        }
    }
}
