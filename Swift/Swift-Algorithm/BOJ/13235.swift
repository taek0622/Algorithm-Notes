//
//  13235.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 8/23/24.
//

//  문제 링크: https://www.acmicpc.net/problem/13235
//  알고리즘 분류: 구현, 문자열

class BOJ13235: Solvable {
    func run() {
        // 메모리: 69096KB, 시간: 4ms, 코드 길이: 80B
        let word = readLine()!
        print(word == String(word.reversed()) ? "true" : "false")
    }
}
