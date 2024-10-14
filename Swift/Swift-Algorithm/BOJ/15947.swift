//
//  15947.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/14/24.
//

//  문제 링크: https://www.acmicpc.net/problem/15947
//  알고리즘 분류: 구현, 문자열, 많은 조건 분기

class BOJ15947: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 503B
        let N = Int(readLine()!)! - 1
        let words = ["baby", "sukhwan", "tururu", "turu", "very", "cute", "tururu", "turu", "in", "bed", "tururu", "turu", "baby", "sukhwan"]

        if (N % 14 == 2 || N % 14 == 6 || N % 14 == 10) {
            print(N / 14 >= 3 ? "tu+ru*\(N / 14 + 2)" : "tururu" + String(repeating: "ru", count: N / 14))
        } else if (N % 14 == 3 || N % 14 == 7 || N % 14 == 11) {
            print(N / 14 >= 4 ? "tu+ru*\(N / 14 + 1)" : "turu" + String(repeating: "ru", count: N / 14))
        } else {
            print(words[N % 14])
        }
    }
}
