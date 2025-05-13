//
//  2023.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/1/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2023
//  알고리즘 분류: 수학, 정수론, 백트래킹, 소수 판정

import Shared

public struct BOJ2023: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 682B
        let N = Int(readLine()!)!
        var result = ""


        for num in [2, 3, 5, 7] where isPrime(num) {
            dfs(1, num)
        }

        print(result)

        func isPrime(_ num: Int) -> Bool {
            if 0...1 ~= num {
                return false
            }

            if num <= 3 {
                return true
            }

            var divisor = 2

            while divisor * divisor <= num {
                divisor += 1
            }

            divisor -= 1

            for div in 2...divisor where num % div == 0 {
                return false
            }

            return true
        }

        func dfs(_ count: Int, _ prevNum: Int) {
            if count == N {
                result += "\(prevNum)\n"
                return
            }

            for num in [1, 3, 7, 9] where isPrime(prevNum * 10 + num) {
                dfs(count+1, prevNum * 10 + num)
            }
        }
    }
}
