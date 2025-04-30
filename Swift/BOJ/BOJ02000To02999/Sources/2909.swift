//
//  2909.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/21/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2909
//  알고리즘 분류: 수학, 구현

class BOJ2909: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 4ms, 코드 길이: 223B
        let CK = readLine()!.split(separator: " ").map { Int($0)! }
        var K = 1
        var price = 0

        for _ in 0..<CK[1] {
            K *= 10
        }

        price += CK[0] / K * K

        if K >= 10 && 5...9 ~= (CK[0] % K / (K / 10)) {
            price += K
        }

        print(price)
    }
}
