//
//  2033.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 8/9/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2033
//  알고리즘 분류: 수학, 구현

class BOJ2033: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 180B
        var N = Int(readLine()!)!
        var compare = 10

        while N > compare {
            if N % compare >= compare / 2 {
                N += compare
            }

            N -= (N % compare)
            compare *= 10
        }

        print(N)
    }
}
