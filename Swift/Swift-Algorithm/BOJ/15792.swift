//
//  15792.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 9/3/24.
//

//  문제 링크: https://www.acmicpc.net/problem/15792
//  알고리즘 분류: 수학, 구현, 사칙연산, 임의 정밀도 / 큰 수 연산

class BOJ15792: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 221B
        var AB = readLine()!.split(separator: " ").map { Int($0)! }
        var result = "\(AB[0] / AB[1])."
        AB[0] = AB[0] % AB[1] * 10

        for _ in 0..<1000 {
            result += "\(AB[0] / AB[1])"
            AB[0] = AB[0] % AB[1] * 10
        }

        print(result)
    }
}
