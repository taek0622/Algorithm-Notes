//
//  2749.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/18.
//

// 문제: https://www.acmicpc.net/problem/2749

import Shared

public struct BOJ2749: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 16ms, 코드 길이: 179B
        let n = Int(readLine()!)!
        let p = 15 * 100000
        var fibonacci = (0, 1)

        for _ in 1..<n%p {
            fibonacci = (fibonacci.1, (fibonacci.0 + fibonacci.1) % 1000000)
        }

        print(fibonacci.1)
    }
}

/*
 피사노 주기({isano period)
 피보나치 수를 어떤 수 K로 나눌 때, 나머지는 항상 주기를 갖게 된다!
 
 주기의 길이를 P라고 할 때, N번째 피보나치 수를 M으로 나눈 나머지는 N % P번째 피보나치 수를 M으로 나눈 나머지와 같다
 
 주기는 M = 10^k (k>2) 일때, 항상 15 * 10^(k-1)
 */
