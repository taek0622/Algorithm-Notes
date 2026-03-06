//
//  9916.swift
//  BOJ09000To09999
//
//  Created by 김이안 on 3/6/26.
//

//  문제 링크: https://www.acmicpc.net/problem/9916
//  알고리즘 분류: 수학, 구현, 사칙연산, 임의 정밀도 / 큰 수 연산

import Shared

public struct BOJ9916: Solvable {
    public func run() {
        // 메모리: 69100KB, 시간: 4ms, 코드 길이: 527B
        let n = Int(readLine()!)!
        print(factorial(n).filter { $0 == 0 }.count)

        func factorial(_ n: Int) -> [Int] {
            if 0...1 ~= n { return [1] }

            var res = factorial(n-1)

            for idx in res.indices {
                res[idx] *= n
            }

            var idx = 0

            while idx < res.count {
                defer { idx += 1 }
                if res[idx] < 10 { continue }

                if idx == res.count - 1 {
                    res.append(res[idx] / 10)
                } else {
                    res[idx+1] += res[idx] / 10
                }

                res[idx] %= 10
            }

            return res
        }
    }
}
