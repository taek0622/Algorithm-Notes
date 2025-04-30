//
//  1614.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/5/25.
//

//  문제 링크: https://www.acmicpc.net/problem/1614
//  알고리즘 분류: 수학, 구현, 사칙연산, 많은 조건 분기

class BOJ1614: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 199B
        let finger = Int(readLine()!)!
        let count = Int(readLine()!)!

        if 2...4 ~= finger {
            print(4 * (count + 1) - (count % 2 == 1 ? finger - 1 : 5 - finger))
        } else {
            print(8 * count + finger - 1)
        }
    }
}
