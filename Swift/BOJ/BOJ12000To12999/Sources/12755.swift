//
//  12755.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/8/25.
//

//  문제 링크: https://www.acmicpc.net/problem/12755
//  알고리즘 분류: 수학, 구현, 브루트포스 알고리즘

class BOJ12755: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 300B
        var N = Int(readLine()!)!
        var minus = 9
        var divisor = 1
        var value = 0

        while minus < N && N - (minus * divisor) > 0 {
            N -= minus * divisor
            minus *= 10
            divisor += 1
            value += minus
        }

        minus /= 10
        value = value / 10 + (N - 1) / divisor + 1

        print(String(value).map { $0 }[(N-1)%divisor])
    }
}
