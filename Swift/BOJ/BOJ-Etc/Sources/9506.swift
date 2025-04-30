//
//  9506.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/06.
//

// 문제: https://www.acmicpc.net/problem/9506

class BOJ9506: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 414B
        while let n = Int(readLine()!), n != -1 {
            var divisors = [Int]()
            var divisor = 2

            while divisor * divisor <= n {
                if n % divisor == 0 {
                    divisors.append(divisor)
                    divisors.append(n/divisor)
                }

                divisor += 1
            }

            print(divisors.reduce(1, +) == n ? "\(n) = 1 + \(divisors.sorted().map { String($0) }.joined(separator: " + "))" : "\(n) is NOT perfect.")
        }
    }
}
