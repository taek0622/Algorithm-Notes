//
//  1434.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 9/28/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1434
//  알고리즘 분류: 수학, 구현, 사칙연산

class BOJ1434: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 4ms, 코드 길이: 212B
        _ = readLine()!.split(separator: " ").map { Int($0)! }
        let A = readLine()!.split(separator: " ").map { Int($0)! }.reduce(0, +)
        let B = readLine()!.split(separator: " ").map { Int($0)! }.reduce(0, +)

        print(A - B)
    }
}
