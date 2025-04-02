//
//  17291.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/2/25.
//

//  문제 링크: https://www.acmicpc.net/problem/17291
//  알고리즘 분류: 구현, 다이나믹 프로그래밍

class BOJ17291: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 355B
        let N = Int(readLine()!)!
        var born = Array(repeating: 0, count: N+1)
        born[1] = 1
        var now = 1

        for year in stride(from: 2, through: N, by: 1) {
            born[year] = now
            now *= 2

            if year % 2 == 0 {
                if year >= 4 {
                    now -= born[year - 3]
                }

                if year >= 6 {
                    now -= born[year - 4]
                }
            }
        }

        print(now)
    }
}
