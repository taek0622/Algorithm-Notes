//
//  15813.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 9/8/24.
//

//  문제 링크: https://www.acmicpc.net/problem/15813
//  알고리즘 분류: 구현, 문자열

class BOJ15813: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 4ms, 코드 길이: 134B
        _ = Int(readLine()!)!
        let name = readLine()!
        var score = 0

        for char in name {
            score += Int(char.asciiValue!) - 64
        }

        print(score)
    }
}
