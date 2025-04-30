//
//  1233.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 7/17/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1233
//  알고리즘 분류: 구현, 브루트포스 알고리즘

class BOJ1233: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 296B
        let S = readLine()!.split(separator: " ").map { Int($0)! }
        var count = Array(repeating: 0, count: S.reduce(1, +))

        for num1 in 1...S[0] {
            for num2 in 1...S[1] {
                for num3 in 1...S[2] {
                    count[num1+num2+num3] += 1
                }
            }
        }

        print(count.firstIndex(of: count.max()!)!)
    }
}
