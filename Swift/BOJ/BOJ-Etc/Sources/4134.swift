//
//  4134.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/09.
//

// 문제: https://www.acmicpc.net/problem/4134

import Shared

public struct BOJ4134: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 136ms, 코드 길이: 482B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            var n = Int(readLine()!)!

            if 0...2 ~= n {
                print("2")
                continue
            }

            while true {
                var divisor = 2
                var isPrime = true

                while divisor * divisor <= n {
                    if n % divisor == 0 {
                        isPrime = false
                        break
                    }

                    divisor += 1
                }

                if isPrime{
                    print("\(n)")
                    break
                }

                n += 1
            }
        }
    }
}
