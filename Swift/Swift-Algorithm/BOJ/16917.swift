//
//  16917.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 8/13/24.
//

//  문제 링크: https://www.acmicpc.net/problem/16917
//  알고리즘 분류: 수학, 구현, 사칙연산

class BOJ16917: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 392B
        let ABCXY = readLine()!.split(separator: " ").map { Int($0)! }
        var price = ABCXY[0] * ABCXY[3] + ABCXY[1] * ABCXY[4]

        if ABCXY[3] > ABCXY[4] {
            price = min(price, ABCXY[2] * ABCXY[4] * 2 + (ABCXY[3] - ABCXY[4]) * ABCXY[0])
        } else {
            price = min(price, ABCXY[2] * ABCXY[3] * 2 + (ABCXY[4] - ABCXY[3]) * ABCXY[1])
        }

        price = min(price, max(ABCXY[3], ABCXY[4]) * ABCXY[2] * 2)
        print(price)
    }
}
