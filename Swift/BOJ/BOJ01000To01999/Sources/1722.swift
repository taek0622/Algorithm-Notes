//
//  1722.swift
//  BOJ01000To01999
//
//  Created by 김민택 on 6/11/25.
//

//  문제 링크: https://www.acmicpc.net/problem/1722
//  알고리즘 분류: 수학, 구현, 조합론

import Shared

public struct BOJ1722: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 4ms, 코드 길이: 994B
        let N = Int(readLine()!)!
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        var factorial = Array(Array(repeating: 0, count: N+1))
        factorial[1] = 1
        var array = Array(1...N)

        for idx in stride(from: 2, through: N, by: 1) {
            factorial[idx] = factorial[idx-1] * idx
        }

        if input[0] == 1 {
            var (base, n) = (input[1]-1, N-1)
            var result = [Int]()

            while array.count > 0 {
                let idx = sequenceNumber(base, n)
                result.append(array.remove(at: idx))

                if n != 0 { base %= factorial[n] }

                n -= 1
            }

            print(result.map { String($0) }.joined(separator: " "))
        } else {
            var number = 1
            var n = N-1
            var idx = 1

            while array.count > 0 {
                let arrayIdx = array.firstIndex(of: input[idx])!
                number += arrayIdx * factorial[n]
                array.remove(at: arrayIdx)
                idx += 1
                n -= 1
            }

            print(number)
        }

        func sequenceNumber(_ k: Int, _ n: Int) -> Int {
            if n < 1 { return 0 }
            return k / factorial[n]
        }
    }
}
