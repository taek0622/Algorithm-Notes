//
//  25497.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/11/25.
//

//  문제 링크: https://www.acmicpc.net/problem/25497
//  알고리즘 분류: 구현, 자료 구조

class BOJ25497: Solvable {
    func run() {
        // 메모리: 69424KB, 시간: 16ms, 코드 길이: 501B
        _ = readLine()
        let skills = readLine()!
        var (L, S) = (0, 0)
        var count = 0

        for skill in skills {
            if skill == "L" {
                L += 1
            } else if skill == "S" {
                S += 1
            } else if skill == "R" {
                if L > 0 {
                    count += 1
                    L -= 1
                } else {
                    break
                }
            } else if skill == "K" {
                if S > 0 {
                    count += 1
                    S -= 1
                } else {
                    break
                }
            } else {
                count += 1
            }
        }

        print(count)
    }
}
