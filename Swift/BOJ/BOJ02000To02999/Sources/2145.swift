//
//  2145.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 8/31/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2145
//  알고리즘 분류: 수학, 구현, 사칙연산

class BOJ2145: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 236B
        while let N = readLine(), N != "0" {
            var num = Int(N)!

            while num > 9 {
                var newNum = 0

                while num > 0 {
                    newNum += num % 10
                    num /= 10
                }

                num = newNum
            }

            print(num)
        }
    }
}
