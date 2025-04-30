//
//  1639.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/9/25.
//

//  문제 링크: https://www.acmicpc.net/problem/1639
//  알고리즘 분류: 구현, 브루트포스 알고리즘

class BOJ1639: Solvable {
    func run() {
        let S = readLine()!.map { Int(String($0))! }
        var N = S.count / 2
        var idx = 0

        while S[idx..<idx+N].reduce(0, +) != S[idx+N..<idx+N*2].reduce(0, +) {
            if idx+N*2 == S.count {
                idx = 0
                N -= 1
            } else {
                idx += 1
            }
        }

        print(N * 2)
    }
}
